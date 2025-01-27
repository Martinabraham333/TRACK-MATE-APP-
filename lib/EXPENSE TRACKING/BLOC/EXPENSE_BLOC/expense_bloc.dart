import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:track_mate/EXPENSE%20TRACKING/MODELS/expense_model.dart';
import 'package:track_mate/EXPENSE%20TRACKING/REPOSITORIES/expense_repository.dart';

part 'expense_event.dart';
part 'expense_state.dart';
part 'expense_bloc.freezed.dart';

class ExpenseBloc extends Bloc<ExpenseEvent, ExpenseState> {
  final ExpenseRepository repository;
  ExpenseBloc(this.repository) : super(InitialExpense()) {
    on<AddExpense>(_addExpense);
    on<FetchExpense>(_fetchExpense);
    on<UpdateExpense>(_updateExpense);
    on<DeleteExpense>(_deleteExpense);
    on<FilterExpense>(_filterExpense);
  }

  _addExpense(AddExpense event, Emitter<ExpenseState> state) async {
    emit(const ExpenseState.loading());
    try {
      final response = await repository.addExpense(
          event.expense, event.date, event.category_id);
    } catch (e) {
      emit(const ExpenseState.error('Error while inserting expense'));
      print('Error while inserting expense');
    }
  }

  _fetchExpense(FetchExpense event, Emitter<ExpenseState> state) async {
    emit(const ExpenseState.loading());
    try {
      final Expensedata = await repository.fetchExpense();
      final monthExpense = await repository.monthlyExpense(event.month);
      final dayExpense = await repository.dayExpense(event.day);
      List categoryExpense =
          await calculatingTotalExpensInMonth(Expensedata, monthExpense);
      double averageExpense =
          await calculatingAverageExpense(Expensedata, monthExpense);
      double predictedExpense =
          await calculatingPredictedExpense(averageExpense);

      List eachDayTotalExpenseList =
          await calculatingEachDayExpense(Expensedata);
      List ExpensedataModified =
          await modifyingExpenseList(Expensedata, eachDayTotalExpenseList);

      emit(ExpenseState.loaded(
          '',
          ExpensedataModified,
          monthExpense,
          dayExpense,
          categoryExpense,
          averageExpense,
          predictedExpense,
          eachDayTotalExpenseList));
    } catch (e) {
      emit(const ExpenseState.error('Error while fetching expense'));
      print('Error while fetching expense $e');
    }
  }

  _updateExpense(UpdateExpense event, Emitter<ExpenseState> state) async {
    emit(const ExpenseState.loading());
    try {
      final response = await repository.updateExpense(
          event.expense_Id, event.expense, event.date, event.category_id);
    } catch (e) {
      emit(const ExpenseState.error('Error while updating expense'));
      print('Error while inserting expense');
    }
  }

  _deleteExpense(DeleteExpense event, Emitter<ExpenseState> state) async {
    emit(const ExpenseState.loading());
    try {
      final response = await repository.deleteExpense(event.expense_Id);
    } catch (e) {
      emit(const ExpenseState.error('Error while deleting expense'));
      print('Error while deleting expense $e');
    }
  }

  _filterExpense(FilterExpense event, Emitter<ExpenseState> state) async {
    final Expensedata = await repository.fetchExpense();
    final monthExpense = await repository.monthlyExpense(event.Month);

    List eachDayTotalExpenseList = await calculatingEachDayExpense(Expensedata);
    List ExpensedataModified =
        await modifyingExpenseList(Expensedata, eachDayTotalExpenseList);

    ExpensedataModified = ExpensedataModified.where((item) {

      return item['DATE'].toString().substring(0, 3) ==
              event.Month.toString() &&
          item['DATE'].toString().substring(7, 11) == event.Year.toString();
    }).toList();
    print("ExpensedataModified after filtering   $ExpensedataModified");
    emit(ExpenseState.loaded('', ExpensedataModified, monthExpense, [], [], [],
        [], eachDayTotalExpenseList));
  }
}

calculatingTotalExpensInMonth(Expensedata, monthExpense) {
  DateTime now = DateTime.now();
  String month = DateFormat('MMM').format(now);
  List categoryExpense = [];
  List categories = [];
  List TempcategoriesUniq = [];
  List categoriesUniq = [];

  // STEPS FOR CREATING LIST THAT CONTAINS LIST OF EACH CATEGORY AND THEIR TOTAL EXPENSE IN MONTH
  // CREATING CATEGORY ID AND CATEGORY NAME LIST
  for (var element in Expensedata) {
    if (element.val3.toString().substring(0, 3) == month) {
      categories.add(
          "${element.val4}*${element.val5}"); // USING * FOR SPLITING TEXT THAT CONTAINS STARS
    }
  }
  // CONVERTING CATEGORY ID LIST TO UNIQ LIST PREVENTING DUPLICATE VALUE
  TempcategoriesUniq = categories.toSet().toList();
  // THIS IS FOR CREATING LIST OF LIST THAT CONTAINS CATEGORY ID AND CATEGORY NAME
  for (var element in TempcategoriesUniq) {
    List SplitedList = element.split('*');
    categoriesUniq.add(SplitedList);
  }
  // FOR LOOP THROUGH UNIQ CATEGORY ID TO CALCULATE TOTAL EXPENSE OF EACH CATEGORY
  for (var category in categoriesUniq) {
    double totalCategExpense = 0.0;
    for (var expense in Expensedata) {
      if (category[0] == expense.val4) {
        // IF CATEGORY ID EQUALS CALCULATE TOTAL EXPENSE
        totalCategExpense = totalCategExpense + double.parse(expense.val2);
      }
    }
    // PERCENTAGE OF TOTAL EXPENSE OF CATEGORY CALCULATED
    var percentage = (totalCategExpense / monthExpense) * 100;
    // CREATED CATEGIRY EXPENSE LIST
    categoryExpense.add({
      'CATEG_ID': category[0],
      'CATEG_NAME': category[1],
      'AMOUNT': totalCategExpense,
      'PERCENTAGE': percentage
    });
  }

  return categoryExpense;
}

calculatingAverageExpense(Expensedata, monthExpense) {
  // STEPS FOR CALCULATING AVERAGE EXPENSE IN ONE DAY
  double averageExpense = 0.0;
  int numberOfDays = 0;
  // WE TAKE CURRENT INDEX AND PREVIOUS INDEX FOR CALCULATING NUMBER OF DAYS
  // NUMBER OF DAYS SHOULD BE UNIQUE AND IT SHOULD NOT REPEAT
  // IN FOR LOOP WE CHCEK CURRENT DATE AND PREVIOUS DATE IS SAME ?

  for (var i = 0; i < Expensedata.length; i++) {
    if (i == 0) {
      // NUMBER OF DAYS INCREASE IF IT IS FIRST DATE IN EXPENSE LIST
      numberOfDays = numberOfDays + 1;
    } else if (Expensedata[i].val3 != Expensedata[i - 1].val3) {
      // IF CURRENT DATE IF NOT SAME AS PREVIOUS DATE NUMBER OF DAYS INCREASE
      numberOfDays = numberOfDays + 1;
    }
  }
  print("NUMBER OF DAYS $numberOfDays");

  averageExpense = monthExpense / numberOfDays;
  return averageExpense;
}

calculatingPredictedExpense(averageExpense) {
  DateTime today = DateTime.now();
  DateTime startOfToday = DateTime(today.year, today.month, today.day);
  // Get the last day of the current month
  DateTime endOfMonth = DateTime(today.year, today.month + 1, 0);
  print("endOfMonth  $endOfMonth");
  print("startOfToday  $startOfToday");
  // Calculate the difference in days
  int daysDifference = endOfMonth.difference(startOfToday).inDays;
  print("daysDifference  $daysDifference");
  return averageExpense * daysDifference;
}

calculatingEachDayExpense(Expensedata) {
  List eachDayTotalExpenseList = [];
  List eachDayList = [];
  List eachDayListUniq = [];
  for (var element in Expensedata) {
    eachDayList.add(element.val3);
  }
  eachDayListUniq = eachDayList.toSet().toList();
  print("eachDayListUniq  $eachDayListUniq");

  for (var date in eachDayListUniq) {
    double totalDayExpense = 0.0;
    for (var item in Expensedata) {
      if (date == item.val3) {
        totalDayExpense = totalDayExpense + double.parse(item.val2.toString());
      }
    }
    eachDayTotalExpenseList.add({"DATE": date, "EXPENSE": totalDayExpense});
  }

  return eachDayTotalExpenseList;
}

modifyingExpenseList(Expensedata, eachDayTotalExpenseList) {
  List ExpensedataModified = [];
  for (var item in eachDayTotalExpenseList) {
    for (var element in Expensedata) {
      if (item['DATE'] == element.val3) {
        ExpensedataModified.add({
          "EXPENSE_ID": element.val1,
          "AMOUNT": element.val2,
          "DATE": element.val3,
          "CATEG_ID": element.val4,
          "CATEG_NAME": element.val5,
          "DAY_EXPENSE": item['EXPENSE'],
        });
      }
    }
  }
  ExpensedataModified.sort((a, b) {
    return b['DATE'].compareTo(a['DATE']);
  });

  return ExpensedataModified;
}
