part of 'expense_bloc.dart';

@freezed
class ExpenseState with _$ExpenseState {
  const factory ExpenseState.loaded(msg,ExpenseList,monthExpense,dayExpense,categoryExpense,averageExpense,predictedExpense,eachDayTotalExpenseList) = ExpenseLoaded;
  const factory ExpenseState.loading() =  ExpenseLoading;
  const factory ExpenseState.error(msg) =  ExpenseError;
  const factory ExpenseState.initial() = InitialExpense;
}
