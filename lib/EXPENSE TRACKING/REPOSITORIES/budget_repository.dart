import 'package:intl/intl.dart';
import 'package:track_mate/DATABASE.dart';
import 'package:track_mate/EXPENSE%20TRACKING/MODELS/budget_model.dart';

class BudgetRepository {
  addBudget(AMOUNT, CATEG_ID) async {
    var selectDate = DateTime.now();
    String formattedDate =
        DateFormat('MMM dd yyyy').format(selectDate).toString();
    final resp = await db.rawInsert(
        'INSERT INTO BUDGET (BUDGET_AMOUNT,DATE,CATEG_ID) VALUES (?,?,?)',
        [AMOUNT, formattedDate, CATEG_ID]);
    print("Response After Inserting Budget : $resp");
  }

  fetchBudget() async {
    var currentMonth = DateFormat.MMM().format(DateTime.now());
    final resp = await db.rawQuery(
        'SELECT * FROM BUDGET e INNER JOIN CATEGORY c ON e.CATEG_ID==C.CATEG_ID ');

    print("Response After fetching Budget : $resp");
    List<Map<String, dynamic>> budgetList = [];

    for (var element in resp) {
      final categoryExpense = await db.rawQuery(
          'SELECT  SUM(AMOUNT)MONTH_EXPENSE FROM EXPENSE WHERE SUBSTR(DATE, 0, 4)=? AND CATEG_ID=?',
          [currentMonth, element['CATEG_ID']]);

      budgetList.add({
        'BUDGET_ID': element['BUDGET_ID'],
        'CATEG_ID': element['CATEG_ID'],
        'BUDGET_AMOUNT': element['BUDGET_AMOUNT'],
        'DATE': element['DATE'],
        'CATEG_NAME': element['CATEG_NAME'],
        'CATEG_EXPENSE': categoryExpense[0]['MONTH_EXPENSE']
      });
    }
    print("budgetList  $budgetList");

    final List<BudgetModel> data = [];
    for (var element in budgetList) {
      data.add(BudgetModel.fromMap(element));
    }
    return data;
  }

  fetchMonthlyExpense() async {
    var currentMonth = DateFormat.MMM().format(DateTime.now());
    final resp = await db.rawQuery(
        'SELECT  SUM(AMOUNT)MONTH_EXPENSE FROM EXPENSE WHERE SUBSTR(DATE, 0, 4)=?',
        [currentMonth]);
    print("Response After fetching monthly Expense : $resp");
    return resp[0]['MONTH_EXPENSE'] ?? 0;
  }

  deleteBudget(expenseId) async {
    print("expenseId $expenseId");
    final resp = await db.rawDelete(
      'DELETE FROM BUDGET WHERE BUDGET_ID = ?',
      [expenseId],
    );
    print("Response After Deleting Budget: $resp");
  }

  updateBudget(EXPENSE_ID, AMOUNT, CATEG_ID) async {
    var selectDate = DateTime.now();
    String formattedDate =
        DateFormat('MMM dd yyyy').format(selectDate).toString();
    final resp = await db.rawUpdate(
      'UPDATE BUDGET  SET BUDGET_AMOUNT = ?, DATE = ?, CATEG_ID = ? WHERE BUDGET_ID = ?',
      [AMOUNT, formattedDate, CATEG_ID, EXPENSE_ID],
    );
    print("Response After Updating Budget: $resp");
  }

 
}
