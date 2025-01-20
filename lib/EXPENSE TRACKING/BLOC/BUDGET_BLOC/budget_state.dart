part of 'budget_bloc.dart';

@freezed
class BudgetState with _$BudgetState {
  const factory BudgetState.loaded(msg,List<BudgetModel> BudgetList,monthlyExpense ) = BudgetLoaded;
  const factory BudgetState.loading() =  BudgetLoading;
  const factory BudgetState.error(msg) =  BudgetError;
  const factory BudgetState.initial() = InitialBudget;
}
