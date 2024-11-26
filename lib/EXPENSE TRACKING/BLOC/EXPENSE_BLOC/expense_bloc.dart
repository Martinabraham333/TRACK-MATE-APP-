import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:track_mate/EXPENSE%20TRACKING/MODELS/expense_model.dart';
import 'package:track_mate/EXPENSE%20TRACKING/REPOSITORIES/expense_repository.dart';

part 'expense_event.dart';
part 'expense_state.dart';
part 'expense_bloc.freezed.dart';

class ExpenseBloc extends Bloc<ExpenseEvent, ExpenseState> {
  final ExpenseRepository repository;
  ExpenseBloc(this.repository) : super(_Initial()) {
    on<AddExpense>(_addExpense);
    on<FetchExpense>(_fetchExpense);
    on<UpdateExpense>(_updateExpense);
    on<DeleteExpense>(_deleteExpense);

  }

  _addExpense(AddExpense event, Emitter<ExpenseState> state) async {
    emit(const ExpenseState.loading());
    try {
      final response = await repository.addExpense(
          event.expense, event.date, event.category_id);
      final List<ExpenseModel> Expense = await repository.fetchExpense();
      emit(ExpenseState.loaded('Expense Added Successfully', Expense,0,0));
    } catch (e) {
      emit(const ExpenseState.error('Error while inserting expense'));
      print('Error while inserting expense');
    }
  }

  _fetchExpense(FetchExpense event, Emitter<ExpenseState> state) async {
    emit(const ExpenseState.loading());
    try {
      final List<ExpenseModel> response = await repository.fetchExpense();
      final monthExpense = await repository.monthlyExpense(event.month);
      final dayExpense = await repository.dayExpense(event.day);
      print("BLOC response AFTER FETCHING  $response");
      emit(ExpenseState.loaded('', response,monthExpense,dayExpense));
    } catch (e) {
      emit(const ExpenseState.error('Error while fetching expense'));
      print('Error while fetching expense');
    }
  }

  _updateExpense(UpdateExpense event, Emitter<ExpenseState> state) async {
    emit(const ExpenseState.loading());
    try {
      final response = await repository.updateExpense(
          event.expense_Id, event.expense, event.date, event.category_id);
      final List<ExpenseModel> Expense = await repository.fetchExpense();
      emit(ExpenseState.loaded('Expense Updated Successfully', Expense,0,0));
    } catch (e) {
      emit(const ExpenseState.error('Error while updating expense'));
      print('Error while inserting expense');
    }
  }

  _deleteExpense(DeleteExpense event, Emitter<ExpenseState> state) async {
    emit(const ExpenseState.loading());
    try {
      final response = await repository.deleteExpense(event.expense_Id);
      final List<ExpenseModel> Expense = await repository.fetchExpense();
      emit(ExpenseState.loaded('Expense Added Successfully', Expense,0,0));
    } catch (e) {
      emit(const ExpenseState.error('Error while deleting expense'));
      print('Error while deleting expense $e');
    }
  }


}
