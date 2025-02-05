// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:track_mate/CONSTANTS.dart';
import 'package:track_mate/EXPENSE%20TRACKING/BLOC/CATEGORY_BLOC/category_bloc.dart';
import 'package:track_mate/EXPENSE%20TRACKING/BLOC/EXPENSE_BLOC/expense_bloc.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/calculatorWidget.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_alert_box.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_text.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_textfield.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custome_appbar.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custome_button.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custome_icons.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/drawer_widget.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/month_year_selection.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/yes_or_no_widget.dart';

class ExpensePage extends StatefulWidget {
  ExpensePage({super.key});

  @override
  State<ExpensePage> createState() => _ExpensePageState();
}

class _ExpensePageState extends State<ExpensePage> {
  TextEditingController _categoryController = TextEditingController();

  TextEditingController _dateController = TextEditingController();
  final TextEditingController _searchController = TextEditingController();
  TextEditingController _expenseController = TextEditingController();
  TextEditingController _monthController = TextEditingController();
  TextEditingController _yearController = TextEditingController();
  TextEditingController _dateFilterController = TextEditingController();
  var monthVar;
  var yearVar;
  @override
  void initState() {
    super.initState();

    context.read<ExpenseBloc>().add(ExpenseEvent.filterExpense(
        DateFormat('MMM').format(DateTime.now()),
        DateFormat('yyyy').format(DateTime.now()),
        false));

    _monthController.text = DateFormat('MMMM').format(DateTime.now());
    _yearController.text = DateFormat('yyyy').format(DateTime.now());
    monthVar = DateFormat('MMM').format(DateTime.now());
    yearVar = DateFormat('yyyy').format(DateTime.now());
  }

  var categoryId;
  var expenseId;
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return BlocListener<ExpenseBloc, ExpenseState>(
      listener: (context, state) {
        if (state is ExpenseLoaded) {
          _categoryController.clear();
          _dateController.clear();
          _expenseController.clear();
        }
      },
      child: Scaffold(
        backgroundColor: PrimaryColor,
        body: BlocBuilder<ExpenseBloc, ExpenseState>(
          builder: (context, state) {
            return state.when(
              loaded: (msg,
                      ExpensedataModified,
                      monthExp,
                      dayExp,
                      categoryExpense,
                      totalMonthexpense,
                      predictedExpense,
                      eachDayTotalExpense,
                      pdfLoading) =>
                  _buildExpenseUi(
                      context, ExpensedataModified, eachDayTotalExpense),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (msg) => Center(child: CircularProgressIndicator()),
              // initial: () => Center(child: CircularProgressIndicator())
            );
          },
        ),
        drawer: DrawerWidget(),
        bottomNavigationBar: Container(
            color: BlueColor,
            height: height * 0.08,
            child: CustomeIcon(
                onTap: () {
                  _categoryController.clear();
                  _dateController.clear();
                  _expenseController.clear();
                  BlocProvider.of<CategoryBloc>(context)
                      .add(const FetchCategory());
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return BlocBuilder<CategoryBloc, CategoryState>(
                          builder: (context, state) {
                            if (state is Loaded) {
                              if (state.category.isNotEmpty) {
                                _dateController.text = DateFormat('MMM dd yyyy')
                                    .format(DateTime.now())
                                    .toString();
                                return _buldFormFields(context);
                              } else {
                                return Container(
                                  color: PrimaryColor,
                                  height: height * 5,
                                  width: double.infinity,
                                  child: Center(
                                      child: CustomeText(
                                    text: "No Categories Found",
                                    fontSize: width * 0.05,
                                    color: SecondaryColor,
                                    fontWeight: FontWeight.bold,
                                  )),
                                );
                              }
                            } else {
                              return CircularProgressIndicator(
                                color: Colors.red,
                              );
                            }
                          },
                        );
                      });
                },
                icon: Icons.add,
                iconSize: width * 0.1,
                iconColor: SecondaryColor)),
      ),
    );
  }

  Widget _buldFormFields(context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: PrimaryColor,
      child: Column(
        children: [
          CustomTextField(
            readonly: true,
            controller: _categoryController,
            hintText: "Select Category",
            widthSize: width * 0.8,
            icon: Icons.category_outlined,
            ontap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return BlocBuilder<CategoryBloc, CategoryState>(
                      builder: (context, state) {
                        if (state is Loaded) {
                          return CustomAlertBox(
                            title: "Category",
                            DataList: state.category,
                            ontap: (value) {
                              _categoryController.text = value.val2;
                              categoryId = value.val1;
                            },
                          );
                        } else {
                          return const AlertDialog(
                            content: SizedBox(
                              height: 50,
                              child: Center(
                                  child: CircularProgressIndicator(
                                color: Colors.red,
                              )),
                            ),
                          );
                        }
                      },
                    );
                  });
            },
          ),
          SizedBox(
            height: height * 0.02,
          ),
          CustomDateTextField(
            readonly: true,
            controller: _dateController,
            hintText: "Select Date",
            widthSize: width * 0.8,
            ontap: (value) {
              _dateController.text = value;
            },
          ),
          SizedBox(
            height: height * 0.02,
          ),
          CustomTextField(
            readonly: true,
            controller: _expenseController,
            hintText: "Enter Expense",
            widthSize: width * 0.8,
            textFieldOnTap: () {
              print("ontap");
              showDialog(
                  context: context,
                  builder: (context) {
                    return CalculatorWidget(
                      ontap: (value) {
                        _expenseController.text = value;
                      },
                    );
                  });
            },
          ),
          SizedBox(
            height: height * 0.02,
          ),
          CustomButton(
            title: 'Save',
            ontap: () {
              if (_categoryController.text.isEmpty) {
                alertBoxMessage(context, 'Select Category ...!');
              } else if (_dateController.text.isEmpty) {
                alertBoxMessage(context, 'Select Date ...!');
              } else if (_expenseController.text.isEmpty) {
                alertBoxMessage(context, 'Enter Expense ...!');
              } else {
                if (expenseId == null) {
                  print("SAVE STARTED...");
                  BlocProvider.of<ExpenseBloc>(context).add(
                      ExpenseEvent.addExpense(
                          double.tryParse(_expenseController.text),
                          _dateController.text,
                          _categoryController.text,
                          categoryId));
                  BlocProvider.of<ExpenseBloc>(context).add(
                      ExpenseEvent.filterExpense(
                          DateFormat('MMM').format(DateTime.now()),
                          DateFormat('yyyy').format(DateTime.now()),
                          false));

                  expenseId = null;
                } else {
                  print("UPDATE STARTED...");
                  BlocProvider.of<ExpenseBloc>(context).add(
                      ExpenseEvent.updateExpense(
                          double.tryParse(_expenseController.text),
                          _dateController.text,
                          expenseId,
                          categoryId));
                  BlocProvider.of<ExpenseBloc>(context).add(
                      ExpenseEvent.filterExpense(
                          DateFormat('MMM').format(DateTime.now()),
                          DateFormat('yyyy').format(DateTime.now()),
                          false));
                  expenseId = null;
                }

                _categoryController.clear();
                _dateController.clear();
                _expenseController.clear();
                Navigator.pop(context);
              }
            },
            width: width * 0.8,
          ),
        ],
      ),
    );
  }

  Widget _buildExpenseUi(context, ExpensedataModified, eachDayTotalExpense) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    print("$eachDayTotalExpense");
    return SafeArea(
        child: Column(
      children: [
        CustomeAppBar(
          title: "Expense",
          menuOntap: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        // eachDayTotalExpense.isEmpty
        //     ? Container()
        //     :
            
            _dateFilterController.text.isNotEmpty ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
             
            Padding(
              padding:  EdgeInsets.only(left: width*0.04),
              child: RefreshButton(
                            title: "Refresh",
                            ontap: () {
                              BlocProvider.of<ExpenseBloc>(context).add(
                                  ExpenseEvent.filterExpense(
                                      DateFormat('MMM').format(DateTime.now()),
                                      DateFormat('yyyy').format(DateTime.now()),
                                      false));
              
                              _monthController.text =
                                  DateFormat('MMMM').format(DateTime.now());
                              _yearController.text =
                                  DateFormat('yyyy').format(DateTime.now());
                              monthVar = DateFormat('MMM').format(DateTime.now());
                              yearVar = DateFormat('yyyy').format(DateTime.now());
              
                              _dateFilterController.clear();
                            },
                        
                          ),
            ),


                           Padding(
                               padding:  EdgeInsets.only(right: width*0.04),
                             child: expenseFilterTextField(
                                                 controller: _dateFilterController,
                                                 hintText: 'Filter By Date',
                                                 widthSize: width * 0.3,
                                                 readonly: true,
                                                 textFieldOnTap: () async {
                                                   DateTime? selectDate = await showDatePicker(
                                                     context: context,
                                                     initialDate: DateTime.now(),
                                                     firstDate: DateTime(2000),
                                                     lastDate: DateTime(2100),
                                                     builder: (BuildContext context, Widget? child) {
                                                       return Theme(
                              data: ThemeData.light().copyWith(
                                dialogBackgroundColor: TertiaryColor,
                                textTheme: const TextTheme(
                                  headlineMedium: TextStyle(color: Colors.white),
                                ),
                                colorScheme: ColorScheme.light(
                                  primary: Colors.blue,
                                  onPrimary: Colors.white,
                                  surface: TertiaryColor,
                                  onSurface: Colors.white,
                                ),
                              ),
                              child: child!,
                                                       );
                                                     },
                                                   );
                             
                                                   if (selectDate != null) {
                                                     String FormatedDate = DateFormat('MMM dd yyyy')
                              .format(selectDate)
                              .toString();
                                                     _dateFilterController.text = FormatedDate.toString();
                             
                                                     BlocProvider.of<ExpenseBloc>(context).add(
                              ExpenseEvent.filterExpenseByDate(
                                  _dateFilterController.text));
                             
                                                 
                                                   }
                                                 },
                                               ),
                           ),
            ],)  :
            
            
             Row(
                mainAxisAlignment:   MainAxisAlignment.spaceAround ,
                children: [
             
                       expenseFilterTextField(
                          controller: _monthController,
                          hintText: 'Select Month',
                          widthSize: width * 0.3,
                          readonly: true,
                          textFieldOnTap: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return Monthselection(
                                    onTap: (value) {
                                      _monthController.text = value[0];
                                      monthVar = value[1];

                                      if (_yearController.text.isEmpty) {
                                        context.read<ExpenseBloc>().add(
                                            ExpenseEvent.filterExpense(
                                                monthVar,
                                                DateFormat('yyyy')
                                                    .format(DateTime.now()),
                                                false));
                                      } else {
                                        context.read<ExpenseBloc>().add(
                                            ExpenseEvent.filterExpense(
                                                monthVar, yearVar, false));
                                      }
                                    },
                                  );
                                });
                          },
                        ),
                  expenseFilterTextField(
                          controller: _yearController,
                          hintText: 'Select Year',
                          widthSize: width * 0.2,
                          readonly: true,
                          textFieldOnTap: () async {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return Yearselection(
                                    onTap: (value) {
                                      _yearController.text = value.toString();
                                      yearVar = value;

                                      if (_monthController.text.isEmpty) {
                                        context.read<ExpenseBloc>().add(
                                            ExpenseEvent.filterExpense(
                                                DateFormat('MMM')
                                                    .format(DateTime.now()),
                                                yearVar,
                                                false));
                                      } else {
                                        context.read<ExpenseBloc>().add(
                                            ExpenseEvent.filterExpense(
                                                monthVar, yearVar, false));
                                      }
                                    },
                                  );
                                });
                          },
                        ),
        _monthController.text==DateFormat('MMMM'). format(DateTime.now()) &&   _yearController.text==DateFormat('yyyy'). format(DateTime.now())  ?      expenseFilterTextField(
                    controller: _dateFilterController,
                    hintText: 'Filter By Date',
                    widthSize: width * 0.3,
                    readonly: true,
                    textFieldOnTap: () async {
                      DateTime? selectDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                        builder: (BuildContext context, Widget? child) {
                          return Theme(
                            data: ThemeData.light().copyWith(
                              dialogBackgroundColor: TertiaryColor,
                              textTheme: const TextTheme(
                                headlineMedium: TextStyle(color: Colors.white),
                              ),
                              colorScheme: ColorScheme.light(
                                primary: Colors.blue,
                                onPrimary: Colors.white,
                                surface: TertiaryColor,
                                onSurface: Colors.white,
                              ),
                            ),
                            child: child!,
                          );
                        },
                      );

                      if (selectDate != null) {
                        String FormatedDate = DateFormat('MMM dd yyyy')
                            .format(selectDate)
                            .toString();
                        _dateFilterController.text = FormatedDate.toString();

                        BlocProvider.of<ExpenseBloc>(context).add(
                            ExpenseEvent.filterExpenseByDate(
                                _dateFilterController.text));

                        // _monthController.text=DateFormat('MMMM')
                        //     .format(selectDate)
                        //     .toString();
                        // _yearController.text=DateFormat('yyyy')
                        //     .format(selectDate)
                        //     .toString();
                      }
                    },
                  ):RefreshButton(
                            title: "Refresh",
                            ontap: () {
                              BlocProvider.of<ExpenseBloc>(context).add(
                                  ExpenseEvent.filterExpense(
                                      DateFormat('MMM').format(DateTime.now()),
                                      DateFormat('yyyy').format(DateTime.now()),
                                      false));
              
                              _monthController.text =
                                  DateFormat('MMMM').format(DateTime.now());
                              _yearController.text =
                                  DateFormat('yyyy').format(DateTime.now());
                              monthVar = DateFormat('MMM').format(DateTime.now());
                              yearVar = DateFormat('yyyy').format(DateTime.now());
              
                              _dateFilterController.clear();
                            },
                        
                          ),
                ],
              ),
        ExpensedataModified.isEmpty
            ? Column(
                children: [
                  SizedBox(
                    height: height * 0.2,
                  ),
                  CustomeText(
                    text: "No Expense Added",
                    fontSize: width * 0.05,
                    color: SecondaryColor,
                  ),
                ],
              )
            : Expanded(
                child: ListView.builder(
                    itemCount: ExpensedataModified.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            (index != 0 &&
                                        ExpensedataModified[index]['DATE'] !=
                                            ExpensedataModified[index - 1]
                                                ['DATE']) ||
                                    (index == 0)
                                ? Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Divider(
                                              thickness: 1,
                                              color: QuaternaryColor,
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.all(width * 0.02),
                                              child: CustomeText(
                                                text:
                                                    "${ExpensedataModified[index]['DATE']}",
                                                fontSize: width * 0.045,
                                                color: BlueColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Divider(
                                              thickness: 1,
                                              color: QuaternaryColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              bottom: width * 0.02),
                                          child: CustomeText(
                                            text:
                                                "₹${ExpensedataModified[index]['DAY_EXPENSE']}",
                                            fontSize: width * 0.04,
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                : SizedBox(),
                            Container(
                              decoration: BoxDecoration(
                                color: TertiaryColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    CustomeIcon(
                                        onTap: () {},
                                        icon: Icons.circle_outlined,
                                        iconSize: width * 0.04,
                                        iconColor: SecondaryColor),
                                    SizedBox(
                                      width: width * 0.02,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                            width: width * 0.3,
                                            child: CustomeText(
                                              text:
                                                  "${ExpensedataModified[index]['CATEG_NAME']}",
                                              fontSize: width * 0.04,
                                              color: QuaternaryColor,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: width * 0.3,
                                          child: CustomeText(
                                            text:
                                                "₹${ExpensedataModified[index]['AMOUNT']}",
                                            fontSize: width * 0.04,
                                            color: QuaternaryColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        CustomeIcon(
                                            onTap: () {
                                              _categoryController.text =
                                                  ExpensedataModified[index]
                                                          ['CATEG_NAME']
                                                      .toString();
                                              _dateController.text =
                                                  ExpensedataModified[index]
                                                          ['DATE']
                                                      .toString();
                                              _expenseController.text =
                                                  ExpensedataModified[index]
                                                          ['AMOUNT']
                                                      .toString();
                                              categoryId =
                                                  ExpensedataModified[index]
                                                      ['CATEG_ID'];
                                              expenseId =
                                                  ExpensedataModified[index]
                                                      ['EXPENSE_ID'];

                                              print(categoryId);
                                              print(expenseId);

                                              showModalBottomSheet(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return _buldFormFields(
                                                        context);
                                                  });
                                            },
                                            icon: Icons.edit,
                                            iconSize: width * 0.04,
                                            iconColor: SecondaryColor),
                                        SizedBox(
                                          width: width * 0.05,
                                        ),
                                        CustomeIcon(
                                            onTap: () async {
                                              bool? yesOrNo = await yes_or_no_alert(
                                                  context,
                                                  "Warning !!!",
                                                  "Are you sure you want to clear all the data ?");
                                              if (yesOrNo == true) {
                                                BlocProvider.of<ExpenseBloc>(
                                                        context)
                                                    .add(ExpenseEvent
                                                        .deleteExpense(
                                                            ExpensedataModified[
                                                                    index][
                                                                'EXPENSE_ID']));
                                                context.read<ExpenseBloc>().add(
                                                    ExpenseEvent.filterExpense(
                                                        DateFormat('MMM')
                                                            .format(
                                                                DateTime.now()),
                                                        DateFormat('yyyy')
                                                            .format(
                                                                DateTime.now()),
                                                        false));
                                              }
                                            },
                                            icon: Icons.delete,
                                            iconSize: width * 0.04,
                                            iconColor: SecondaryColor)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
      ],
    ));
  }
}
