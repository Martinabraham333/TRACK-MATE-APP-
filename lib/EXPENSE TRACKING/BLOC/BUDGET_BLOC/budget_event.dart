part of 'budget_bloc.dart';

@freezed
class BudgetEvent with _$BudgetEvent {
  const factory BudgetEvent.addBudget(Budget,category,category_id) = AddBudget;
  const factory BudgetEvent.fetchBudget() = FetchBudget;

  const factory BudgetEvent.updateBudget(Budget,Budget_Id,category_id) = UpdateBudget;
  const factory BudgetEvent.deleteBudget(Budget_Id) = DeleteBudget;

}