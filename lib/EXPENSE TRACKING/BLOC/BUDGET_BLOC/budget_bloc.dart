import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:track_mate/EXPENSE%20TRACKING/MODELS/budget_model.dart';
import 'package:track_mate/EXPENSE%20TRACKING/REPOSITORIES/budget_repository.dart';


part 'budget_event.dart';
part 'budget_state.dart';
part 'budget_bloc.freezed.dart';



class BudgetBloc extends Bloc<BudgetEvent, BudgetState> {
  final BudgetRepository repository;
  BudgetBloc(this.repository) : super(const InitialBudget()) {
    on<AddBudget>(_addBudget);
    on<FetchBudget>(_fetchBudget);

    on<UpdateBudget>(_updateBudget);
    on<DeleteBudget>(_deleteBudget);


  }

  _addBudget(AddBudget event, Emitter<BudgetState> state) async {
    emit(const BudgetState.loading());
    try {
      final response = await repository.addBudget(
          event.Budget,  event.category_id);
      final List<BudgetModel> Budget = await repository.fetchBudget();
       final monthExpense = await repository.fetchMonthlyExpense();
      emit(BudgetState.loaded('Budget Added Successfully', Budget,monthExpense,));
    } catch (e) {
      emit(const BudgetState.error('Error while inserting Budget'));
      print('Error while inserting Budget $e');
    }
  }

  _fetchBudget(FetchBudget event, Emitter<BudgetState> state) async {
    emit(const BudgetState.loading());
    try {
      final List<BudgetModel> response = await repository.fetchBudget();
      final monthExpense = await repository.fetchMonthlyExpense();
      print("BLOC response AFTER FETCHING  $response");
      emit(BudgetState.loaded('', response,monthExpense,));
    } catch (e) {
      emit(const BudgetState.error('Error while fetching Budget'));
      print('Error while fetching Budget $e');
    }
  }


  _updateBudget(UpdateBudget event, Emitter<BudgetState> state) async {
    emit(const BudgetState.loading());
    try {
      final response = await repository.updateBudget(
          event.Budget_Id, event.Budget,  event.category_id);
      final List<BudgetModel> Budget = await repository.fetchBudget();
        final monthExpense = await repository.fetchMonthlyExpense();
      emit(BudgetState.loaded('Budget Updated Successfully', Budget,monthExpense,));
    } catch (e) {
      emit(const BudgetState.error('Error while updating Budget'));
      print('Error while inserting Budget');
    }
  }

  _deleteBudget(DeleteBudget event, Emitter<BudgetState> state) async {
    emit(const BudgetState.loading());
    try {
      final response = await repository.deleteBudget(event.Budget_Id);
      final List<BudgetModel> Budget = await repository.fetchBudget();
       final monthExpense = await repository.fetchMonthlyExpense();
      emit(BudgetState.loaded('Budget Added Successfully', Budget,monthExpense,));
    } catch (e) {
      emit(const BudgetState.error('Error while deleting Budget'));
      print('Error while deleting Budget $e');
    }
  }



}
