import 'package:intl/intl.dart';
import 'package:track_mate/DATABASE.dart';
import 'package:track_mate/EXPENSE%20TRACKING/MODELS/expense_model.dart';

class ExpenseRepository {
  addExpense(AMOUNT, DATE, CATEG_ID) async {
    final resp = await db.rawInsert(
        'INSERT INTO EXPENSE (AMOUNT,DATE,CATEG_ID) VALUES (?,?,?)',
        [AMOUNT, DATE, CATEG_ID]);
    print("Response After Inserting Expense : $resp");
  }

  fetchExpense() async {
    final resp = await db.rawQuery(
        'SELECT * FROM EXPENSE e INNER JOIN CATEGORY c ON e.CATEG_ID==C.CATEG_ID ');
    print("Response After fetching Expense : $resp");
    final List<ExpenseModel> data = [];
    for (var element in resp) {
      data.add(ExpenseModel.fromMap(element));
    }
    return data;
  }

  deleteExpense(expenseId) async {
    print("expenseId $expenseId");
    final resp = await db.rawDelete(
      'DELETE FROM EXPENSE WHERE EXPENSE_ID = ?',
      [expenseId],
    );
    print("Response After Deleting Expense: $resp");
  }

  updateExpense(EXPENSE_ID, AMOUNT, DATE, CATEG_ID) async {
    final resp = await db.rawUpdate(
      'UPDATE EXPENSE  SET AMOUNT = ?, DATE = ?, CATEG_ID = ? WHERE EXPENSE_ID = ?',
      [AMOUNT, DATE, CATEG_ID, EXPENSE_ID],
    );
    print("Response After Updating Expense: $resp");
  }

  monthlyExpense(currentMonth) async {
    final resp = await db.rawQuery(
        'SELECT  SUM(AMOUNT)MONTH_EXPENSE FROM EXPENSE WHERE SUBSTR(DATE, 0, 4)=?',
        [currentMonth]);
    print("Response After fetching monthly Expense : $resp");
    return resp[0]['MONTH_EXPENSE'] ?? 0;
  }

  dayExpense(day) async {
    final resp = await db.rawQuery(
        'SELECT  SUM(AMOUNT)DAY_EXPENSE FROM EXPENSE WHERE DATE=?',
        [day]);
    print("Response After fetching Daily Expense : $resp");
    return resp[0]['DAY_EXPENSE'] ?? 0;
  }
}
