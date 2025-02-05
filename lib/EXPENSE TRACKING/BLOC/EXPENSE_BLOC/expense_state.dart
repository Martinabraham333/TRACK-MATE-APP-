part of 'expense_bloc.dart';

@freezed
class ExpenseState with _$ExpenseState {
  const factory ExpenseState.loaded(
      msg,
      ExpenseList,
      monthExpense,
      dayExpense,
      categoryExpense,
      averageExpense,
      predictedExpense,
      eachDayTotalExpenseList,
      pdfLoading) = ExpenseLoaded;
  const factory ExpenseState.loading() = ExpenseLoading;
  const factory ExpenseState.error(msg) = ExpenseError;
  factory ExpenseState.initial() {
    return ExpenseState.loaded(
      '', [], '', 0.0, [], 0.0, 0.0, [], false);
  }
}
