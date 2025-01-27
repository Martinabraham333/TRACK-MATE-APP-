part of 'expense_bloc.dart';

@freezed
class ExpenseEvent with _$ExpenseEvent {
  const factory ExpenseEvent.addExpense(expense,date,category,category_id) = AddExpense;
  const factory ExpenseEvent.fetchExpense(month,day) = FetchExpense;
  const factory ExpenseEvent.updateExpense(expense,date,expense_Id,category_id) = UpdateExpense;
  const factory ExpenseEvent.deleteExpense(expense_Id) = DeleteExpense;
  const factory ExpenseEvent.filterExpense(Month,Year) = FilterExpense;

  


}