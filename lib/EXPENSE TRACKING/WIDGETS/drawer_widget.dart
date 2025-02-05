import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:track_mate/CONSTANTS.dart';
import 'package:track_mate/DATABASE.dart';
import 'package:track_mate/EXPENSE%20TRACKING/BLOC/BUDGET_BLOC/budget_bloc.dart';
import 'package:track_mate/EXPENSE%20TRACKING/BLOC/CATEGORY_BLOC/category_bloc.dart';
import 'package:track_mate/EXPENSE%20TRACKING/BLOC/EXPENSE_BLOC/expense_bloc.dart';
import 'package:track_mate/EXPENSE%20TRACKING/SCREENS/expense_report.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_alert_box.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_text.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_textfield.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custome_button.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/month_year_selection.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/yes_or_no_widget.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  void initState() {
    // BlocProvider.of<ExpenseBloc>(context).add(ExpenseEvent.fetchExpense(
    //     DateFormat('MMM').format(DateTime.now()),
    //     DateFormat('yyyy').format(DateTime.now()),
    //     DateFormat('MMM dd yyyy').format(DateTime.now()),false));

    super.initState();
  }

  TextEditingController _monthController = TextEditingController();
  TextEditingController _yearController = TextEditingController();
  var monthVar;
  var yearVar;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Drawer(
      backgroundColor: TertiaryColor,
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: PrimaryColor,
            ),
            child: Column(
              children: [
                FadeInImage(
                  placeholder: AssetImage(
                      'assets/images/black.jpg'), // Transparent placeholder
                  image: AssetImage('assets/images/logo.png'),
                  width: width * 0.2,
                  height: height * 0.1,
                  fadeInDuration: const Duration(seconds: 2),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText("Track Mate",
                        textStyle: TextStyle(
                            fontSize: width * 0.08,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFC0A265)),
                        colors: [
                          Color(0xFFC0A265),
                          Colors.green,
                          Colors.red,
                          Colors.yellow,
                          Colors.blue,
                          Colors.pink,
                        ]),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            title: Row(
              children: [
                Icon(
                  Icons.clear_all,
                  color: SecondaryColor,
                  size: width * 0.05,
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                CustomeText(
                  text: "Clear All",
                  fontSize: width * 0.05,
                  color: SecondaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            onTap: () async {
              bool? yesOrNo = await yes_or_no_alert(context, "Warning !!!",
                  "Are you sure you want to clear all the data ?");
              if (yesOrNo == true) {
                await resetDatabase();
                await initDatabase();
                BlocProvider.of<ExpenseBloc>(context).add(
                    ExpenseEvent.fetchExpense(
                        DateFormat('MMM').format(DateTime.now()),
                        DateFormat('yyyy').format(DateTime.now()),
                        DateFormat('MMM dd yyyy').format(DateTime.now()),
                        false));

                BlocProvider.of<CategoryBloc>(context)
                    .add(const FetchCategory());
                BlocProvider.of<BudgetBloc>(context)
                    .add(BudgetEvent.fetchBudget());
              } else {}
            },
          ),
          ListTile(
            title: Row(
              children: [
                Icon(
                  Icons.settings,
                  color: SecondaryColor,
                  size: width * 0.05,
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                CustomeText(
                  text: "Expense Report",
                  fontSize: width * 0.05,
                  color: SecondaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            onTap: () async {
              _monthController.text = DateFormat('MMMM').format(DateTime.now());
              _yearController.text = DateFormat('yyyy').format(DateTime.now());

              monthVar = DateFormat('MMM').format(DateTime.now());
              yearVar = DateFormat('yyyy').format(DateTime.now());
              // context
              //     .read<ExpenseBloc>()
              //     .add(ExpenseEvent.filterExpense(monthVar, yearVar,false));
              showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      backgroundColor: TertiaryColor,
                      child: Padding(
                        padding: EdgeInsets.all(width * 0.04),
                        child: Container(
                          height: height * 0.5,
                          width: width * .5,
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.05,
                              ),
                              CustomTextField(
                                controller: _monthController,
                                hintText: 'Select Month',
                                widthSize: width * 0.6,
                                readonly: true,
                                icon: Icons.calendar_month,
                                ontap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return Monthselection(
                                          onTap: (value) {
                                            _monthController.text = value[0];
                                            monthVar = value[1];

                                    
                                          },
                                        );
                                      });
                                },
                              ),
                              SizedBox(
                                height: height * 0.05,
                              ),
                              CustomTextField(
                                controller: _yearController,
                                hintText: 'Select Year',
                                widthSize: width * 0.6,
                                readonly: true,
                                icon: Icons.calendar_today,
                                ontap: () async {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return Yearselection(
                                          onTap: (value) {
                                            _yearController.text =
                                                value.toString();
                                            yearVar = value;
                                          },
                                        );
                                      });
                                },
                              ),
                              SizedBox(
                                height: height * 0.05,
                              ),
                              BlocListener<ExpenseBloc, ExpenseState>(
                                listener: (context, state) async {
                                  if (state is ExpenseLoaded &&
                                      state.pdfLoading == true) {
                                    print("listener ${state.monthExpense}");
                                    if (state.monthExpense.toString() != "0") {
                                      print(
                                          "MONTH EXPENSE ${state.monthExpense}");
                                      await GenerateExpenseReport(
                                        context,
                                        state.ExpenseList,
                                        _monthController.text,
                                        _yearController.text,
                                        state.monthExpense,
                                        state.categoryExpense,
                                      );
                                    } else {
                                      BlocProvider.of<ExpenseBloc>(context).add(
                                        ExpenseEvent.filterExpense(
                                            DateFormat('MMM')
                                                .format(DateTime.now()),
                                            DateFormat('yyyy')
                                                .format(DateTime.now()),
                                            false),
                                      );
                                      return alertBoxMessage(
                                          context, 'No Data Found');
                                    }
                                  }
                                },
                                child: BlocBuilder<ExpenseBloc, ExpenseState>(
                                  builder: (context, state) {
                                    if (state is ExpenseLoaded) {
                                      print("LOADING   ${state.pdfLoading}");
                                      return state.pdfLoading == true
                                          ? CircularProgressIndicator(
                                              color: Colors.white,
                                            )
                                          : Container(
                                              width: width * 0.6,
                                              child: CustomButton(
                                                  title: "Retrive",
                                                  ontap: () async {
                                                    print("RETRIEVE");

                                                    print(
                                                        "ONTAP monthvar $monthVar yearvar $yearVar");
                                                    BlocProvider.of<
                                                                ExpenseBloc>(
                                                            context)
                                                        .add(
                                                      ExpenseEvent
                                                          .filterExpense(
                                                              monthVar,
                                                              yearVar,
                                                              true),
                                                    );
                                                  },
                                                  width: 400),
                                            );
                                    } else {
                                      return CircularProgressIndicator();
                                    }
                                  },
                                ),
                              ),
                              SizedBox(
                                height: height * 0.05,
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: TextButton(
                                  onPressed: () {
                                    _monthController.clear();
                                    _yearController.clear();
                                    monthVar = '';
                                    yearVar = '';
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "Close",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            },
          )
        ],
      ),
    );
  }
}
