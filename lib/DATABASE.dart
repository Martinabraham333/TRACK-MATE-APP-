import 'package:sqflite/sqflite.dart';

late Database db;

initDatabase() async {
  try {
    db = await openDatabase(
      'trackmate.db',
      version: 1,
      onCreate: (db, version) async {
    
        await db.execute(
            'CREATE TABLE CATEGORY (CATEG_ID INTEGER PRIMARY KEY, CATEG_NAME TEXT)');

        await db.execute(
            'CREATE TABLE EXPENSE (EXPENSE_ID INTEGER PRIMARY KEY, AMOUNT REAL, DATE TEXT, CATEG_ID INTEGER, FOREIGN KEY(CATEG_ID) REFERENCES CATEGORY(CATEG_ID) ON DELETE CASCADE)');
      
        await db.execute(
            'CREATE TABLE BUDGET ('
            'BUDGET_ID INTEGER PRIMARY KEY, '
            'CATEG_ID INTEGER, '
            'BUDGET_AMOUNT REAL, '
            'DATE TEXT, ' 
            'FOREIGN KEY(CATEG_ID) REFERENCES CATEGORY(CATEG_ID) ON DELETE CASCADE)');


      },
      onOpen: (db) async {
    
        await db.execute('PRAGMA FOREIGN_KEYS=ON');

 List<Map<String, dynamic>> existingCategories = await db.query('CATEGORY');

     if (existingCategories.isEmpty) {  // Insert only if table is empty
          Batch batch = db.batch();
          List<String> categories = [
            'Food',
            'Transportation',
            'Entertainment',
            'Shopping',
            'Healthcare',
            'Education',
            'Bills & Utilities',
            'Rent',
            'Investments',
        
            'Travel',
            'Personal Care',
            'Subscriptions',
            'Others',
            'Savings',
            'No Expense Added'
          ];

          for (String category in categories) {
            batch.rawInsert('INSERT INTO CATEGORY (CATEG_NAME) VALUES (?)', [category]);
          }
          await batch.commit();
          print("Categories inserted as this is the first app launch.");
        } else {
          print("Categories already present.");
        }
      },
    );
    print("DATABASE INITIALIZED...");
  } catch (e) {
    print("DATABASE ERROR: $e");
  }
}





Future<void> resetDatabase() async {
  try {
    // Delete the existing database
    await deleteDatabase('trackmate.db');
    print("Old database removed.");
  } catch (e) {
    print("Error deleting database: $e");
  }
}

