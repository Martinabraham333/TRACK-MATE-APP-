part of 'expense_bloc.dart';

@freezed
class ExpenseState with _$ExpenseState {
  const factory ExpenseState.loaded(msg,List<ExpenseModel> ExpenseList,monthExpense,dayExpense) = ExpenseLoaded;
  const factory ExpenseState.loading() =  ExpenseLoading;
  const factory ExpenseState.error(msg) =  ExpenseError;
  const factory ExpenseState.initial() = _Initial;
}
