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
  ExpenseBloc(this.repository) : super(ExpenseState.initial()) {
    on<AddExpense>(_addExpense);
    on<FetchExpense>(_fetchExpense);
    on<UpdateExpense>(_updateExpense);
    on<DeleteExpense>(_deleteExpense);
    on<FilterExpense>(_filterExpense);
    on<FilterExpenseByDate>(_filterExpenseByDate);
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
    print("CALLING FETCH EXPENSE");
    emit(const ExpenseState.loading());
    try {
      final Expensedata = await repository.fetchExpense();
      if (Expensedata.isEmpty) {
        emit(ExpenseState.loaded('', [], '', 0.0, [], 0.0, 0.0, [], false));
      } else {
        final monthExpense = await repository.monthlyExpense(
            event.FilterMonth, event.FilterYear);
        final dayExpense = await repository.dayExpense(event.day);
        List categoryExpense = await calculatingTotalExpensInMonth(
            Expensedata, monthExpense, event.FilterMonth, event.FilterYear);

        print("categoryExpense  $categoryExpense");
        double averageExpense = await calculatingAverageExpense(
          Expensedata,
          monthExpense,
          DateFormat.MMM().format(DateTime.now()),
        );
        double predictedExpense =
            await calculatingPredictedExpense(averageExpense, Expensedata);

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
            eachDayTotalExpenseList,
            event.pdfLoading));
      }
    } catch (e) {
      emit(const ExpenseState.error('Error while fetching expense '));
      print('Error while fetching expense /// $e');
    }
  }

  _filterExpenseByDate(
      FilterExpenseByDate event, Emitter<ExpenseState> state) async {
    print("CALLING FILTER FETCH EXPENSE");
    emit(const ExpenseState.loading());
    try {
      final Expensedata = await repository.fetchExpenseByDate(event.date);

      List eachDayTotalExpenseList =
          await calculatingEachDayExpense(Expensedata);
      List ExpensedataModified =
          await modifyingExpenseList(Expensedata, eachDayTotalExpenseList);
      emit(ExpenseState.loaded('', ExpensedataModified, 0.0, 0.0, [], 0.0, 0.0,
          eachDayTotalExpenseList, false));
    } catch (e) {
      emit(const ExpenseState.error('Error while fetching expense '));
      print('Error while fetching expense /// $e');
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
    print("BLOC FILTER EXPENSE CALLED");
    final Expensedata = await repository.fetchExpense();

    final monthExpense =
        await repository.monthlyExpense(event.Month, event.Year);
    final dayExpense = await repository
        .dayExpense(DateFormat('MMM dd yyyy').format(DateTime.now()));
    List categoryExpense = await calculatingTotalExpensInMonth(
        Expensedata, monthExpense, event.Month, event.Year);

    double averageExpense = await calculatingAverageExpense(
      Expensedata,
      monthExpense,
      DateFormat.MMM().format(DateTime.now()),
    );
    double predictedExpense =
        await calculatingPredictedExpense(averageExpense, Expensedata);

    List eachDayTotalExpenseList = await calculatingEachDayExpense(
      Expensedata,
    );
    List ExpensedataModified =
        await modifyingExpenseList(Expensedata, eachDayTotalExpenseList);

    ExpensedataModified = ExpensedataModified.where((item) {
      return item['DATE'].toString().substring(0, 3) ==
              event.Month.toString() &&
          item['DATE'].toString().substring(7, 11) == event.Year.toString();
    }).toList();
    print("BLOC FILTER EXPENSE ExpensedataModified  $ExpensedataModified");
    emit(ExpenseState.loaded(
        '',
        ExpensedataModified,
        monthExpense,
        dayExpense,
        categoryExpense,
        averageExpense,
        predictedExpense,
        eachDayTotalExpenseList,
        event.pdfLoading));
  }
}

calculatingTotalExpensInMonth(Expensedata, monthExpense, Month, Year) {
  // DateTime now = DateTime.now();
  // String month = DateFormat('MMM').format(now);
  print(
      "EXPENSE OF EACH CATEGORY Month $Month  Year  $Year  monthExpense $monthExpense");
  List categoryExpense = [];
  List categories = [];
  List TempcategoriesUniq = [];
  List categoriesUniq = [];

  // STEPS FOR CREATING LIST THAT CONTAINS LIST OF EACH CATEGORY AND THEIR TOTAL EXPENSE IN MONTH
  // CREATING CATEGORY ID AND CATEGORY NAME LIST
  for (var element in Expensedata) {
    if (element.val3.toString().substring(0, 3) == Month.toString() &&
        element.val3.toString().substring(7, 11) == Year.toString()) {
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
  List FilteredList = [];

  for (var item in Expensedata) {
    if (item.val3.toString().substring(0, 3) == Month.toString() &&
        item.val3.toString().substring(7, 11) == Year.toString()) {
      FilteredList.add(item);
    }
  }

  for (var category in categoriesUniq) {
    double totalCategExpense = 0.0;
    for (var expense in FilteredList) {
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
  print("EXPENSE OF EACH CATEGORY $categoryExpense");
  return categoryExpense;
}

calculatingAverageExpense(Expensedata, monthExpense, Month) {
  // STEPS FOR CALCULATING AVERAGE EXPENSE IN ONE DAY
  var Year = DateFormat('yyyy').format(DateTime.now());
  List FilteredList = [];
  for (var item in Expensedata) {
    if (item.val3.toString().substring(0, 3) == Month &&
        item.val3.toString().substring(7, 11) == Year) {
      FilteredList.add(item);
    }
  }
 
  double averageExpense = 0.0;
  int numberOfDays = 0;
  
  for (var i = 0; i < FilteredList.length; i++) {
    if (i == 0) {
      
      numberOfDays = numberOfDays + 1;
    } else if (FilteredList[i].val3 != FilteredList[i - 1].val3) {
    
      numberOfDays = numberOfDays + 1;
    }
  }

  averageExpense = monthExpense / numberOfDays;
  return averageExpense;
}

calculatingPredictedExpense(averageExpense, Expensedata) {
  DateTime today = DateTime.now();

  String dateString = Expensedata[Expensedata.length - 1].val3;
  DateTime startDate = DateFormat("MMM dd yyyy").parse(dateString);
  print(
      "startDate $startDate      ${Expensedata[Expensedata.length - 1].val3}");
  DateTime endOfMonth = DateTime(today.year, today.month + 1, 0);
  print("endOfMonth $endOfMonth");
  // Calculate the difference in days
  int daysDifference = endOfMonth.difference(startDate).inDays;
  print("daysDifference  ${(daysDifference +1)}");
  return averageExpense * (daysDifference +1);
}

calculatingEachDayExpense(
  Expensedata,
) {
  List eachDayTotalExpenseList = [];
  List eachDayList = [];
  List eachDayListUniq = [];
  for (var element in Expensedata) {
    eachDayList.add(element.val3);
  }
  eachDayListUniq = eachDayList.toSet().toList();

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
