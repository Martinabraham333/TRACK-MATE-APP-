import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:track_mate/CONSTANTS.dart';
import 'package:track_mate/DATABASE.dart';
import 'package:track_mate/EXPENSE%20TRACKING/BLOC/EXPENSE_BLOC/expense_bloc.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_text.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_textfield.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custome_appbar.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/drawer_widget.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/month_year_selection.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  TextEditingController _monthController = TextEditingController();
  TextEditingController _yearController = TextEditingController();
  var monthVar;
  var yearVar;
  var currentMonth;
  var currentYear;

  void initState() {
    print("INIT STATE ///");
    BlocProvider.of<ExpenseBloc>(context).add(ExpenseEvent.fetchExpense(
        DateFormat('MMM').format(DateTime.now()),
        DateFormat('yyyy').format(DateTime.now()),
        DateFormat('MMM dd yyyy').format(DateTime.now()),
        false));
    print("AFTER CALLING BLOC ///");
    _monthController.text = DateFormat('MMMM').format(DateTime.now());
    _yearController.text = DateFormat('yyyy').format(DateTime.now());
    monthVar = DateFormat('MMM').format(DateTime.now());
    yearVar = DateFormat('yyyy').format(DateTime.now());

    currentMonth = DateFormat('MMM').format(DateTime.now());
    currentYear = DateFormat('yyyy').format(DateTime.now());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: PrimaryColor,
        body: Builder(builder: (context) {
          return BlocBuilder<ExpenseBloc, ExpenseState>(
            builder: (context, state) {
              return state.when(
                loaded: (msg,
                        ExpenseList,
                        monthExp,
                        dayExp,
                        categoryExpense,
                        averageExpense,
                        predictedExpense,
                        eachDayTotalExpenseList,
                        pdfloading) =>
                    _homePageUi(context, monthExp, dayExp, categoryExpense,
                        averageExpense, predictedExpense),
                loading: () => Center(
                    child: CircularProgressIndicator(
                  color: Colors.white,
                )),
                error: (MSG) => Center(
                    child: CircularProgressIndicator(
                  color: Colors.white,
                )),
                // initial: () => Center(
                //         child: CircularProgressIndicator(
                //       color: Colors.white,
                //     ))
              );
            },
          );
        }),
        drawer: DrawerWidget());
  }

  Widget _homePageUi(context, monthExp, dayExp, categoryExpense, averageExpense,
      predictedExpense) {
    print("/////////// HOME PAGE ////////////////");
    print("monthExp $monthExp");
    print("dayExp $dayExp");
    print("categoryExpense $categoryExpense");
    print("averageExpense $averageExpense");
    print("predictedExpense $predictedExpense");
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Column(
        children: [
          CustomeAppBar(
            title: "Home",
            menuOntap: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.02,
                      left: width * 0.04,
                      right: width * 0.04,
                    ),
                    child: monthExp.toString().isEmpty
                        ? Column(
                            children: [
                              // CustomeText(
                              //   text: "Track Mate",
                              //   fontSize: width * 0.1,
                              //   color: Color(0xFFC0A265),
                              //   fontWeight: FontWeight.bold,
                              // ),
                              SizedBox(
                                height: height * 0.05,
                              ),
                              CustomeText(
                                text: "Lets Track Your Expense",
                                fontSize: width * 0.05,
                                color: SecondaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(
                                height: height * 0.05,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomeText(
                                    text: "1. ",
                                    fontSize: width * 0.05,
                                    color: QuaternaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  Container(
                                    width: width * 0.8,
                                    child: CustomeText(
                                      text:
                                          "Navigate to Category Page and Create Category",
                                      fontSize: width * 0.05,
                                      color: QuaternaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: height * 0.04,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomeText(
                                    text: "2. ",
                                    fontSize: width * 0.05,
                                    color: QuaternaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  Container(
                                    width: width * 0.8,
                                    child: CustomeText(
                                      text:
                                          "Navigate to Expense Page and Create Expense",
                                      fontSize: width * 0.05,
                                      color: QuaternaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: height * 0.04,
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomeText(
                                    text: "3. ",
                                    fontSize: width * 0.05,
                                    color: QuaternaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  Container(
                                    width: width * 0.8,
                                    child: CustomeText(
                                      text:
                                          "Navigate to Budget Page if you want to add budget for each category",
                                      fontSize: width * 0.05,
                                      color: QuaternaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        : monthVar == currentMonth && yearVar == currentYear
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: height * 0.2,
                                    width: width * 0.4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: TertiaryColor,
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        CustomeText(
                                            text: "Monthly Expense",
                                            fontSize: width * 0.04,
                                            color: SecondaryColor),
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        CustomeText(
                                            text: "₹$monthExp",
                                            fontSize: width * 0.04,
                                            color: Colors.red),
                                        SizedBox(
                                          height: height * 0.04,
                                        ),
                                        CustomeText(
                                            text: "Predicted Expense",
                                            fontSize: width * 0.04,
                                            color: SecondaryColor),
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        CustomeText(
                                            text: predictedExpense.isNaN
                                                ? "₹${0}"
                                                : "₹${predictedExpense.toStringAsFixed(2)}",
                                            fontSize: width * 0.04,
                                            color: Colors.red),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: height * 0.2,
                                    width: width * 0.4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: TertiaryColor,
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        CustomeText(
                                            text: "Daily Expense",
                                            fontSize: width * 0.04,
                                            color: SecondaryColor),
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        CustomeText(
                                            text: " ₹$dayExp",
                                            fontSize: width * 0.04,
                                            color: Colors.red),
                                        SizedBox(
                                          height: height * 0.04,
                                        ),
                                        CustomeText(
                                            text: "Avg Expense",
                                            fontSize: width * 0.04,
                                            color: SecondaryColor),
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        CustomeText(
                                            text: averageExpense.isNaN
                                                ? "₹${0}"
                                                : "₹${averageExpense.toStringAsFixed(2)}",
                                            fontSize: width * 0.04,
                                            color: Colors.red),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            :monthExp !=0 ? Align(
                              alignment: Alignment.bottomLeft,
                              child: Row(
                                   mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      height: height * 0.08,
                                          width: width * 0.4,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: TertiaryColor,
                                          ),
                                      child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          CustomeText(
                                              text: "Month Expense",
                                              fontSize: width * 0.04,
                                              color: Colors.white),
                                          CustomeText(
                                              text: "$monthExp",
                                              fontSize: width * 0.04,
                                              color: Colors.red),
                                        ],
                                      ),
                                    ),
                                  Container(
                                      height: height * 0.08,
                                          width: width * 0.4,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: TertiaryColor,
                                          ),
                                      child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          CustomeText(
                                              text: "Average Expense",
                                              fontSize: width * 0.04,
                                              color: Colors.white),
                                          CustomeText(
                                              text: "$averageExpense",
                                              fontSize: width * 0.04,
                                              color: Colors.red),
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                            ):Container(),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  monthExp.toString().isEmpty
                      ? Container()
                      : Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CustomTextField(
                                  controller: _monthController,
                                  hintText: 'Select Month',
                                  widthSize: width * 0.4,
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

                                              if (_yearController
                                                  .text.isEmpty) {
                                                BlocProvider.of<ExpenseBloc>(
                                                        context)
                                                    .add(ExpenseEvent
                                                        .fetchExpense(
                                                            monthVar,
                                                            DateFormat('yyyy')
                                                                .format(DateTime
                                                                    .now()),
                                                            DateFormat(
                                                                    'MMM dd yyyy')
                                                                .format(DateTime
                                                                    .now()),
                                                            false));
                                              } else {
                                                BlocProvider.of<ExpenseBloc>(
                                                        context)
                                                    .add(ExpenseEvent
                                                        .fetchExpense(
                                                            monthVar,
                                                            yearVar,
                                                            DateFormat(
                                                                    'MMM dd yyyy')
                                                                .format(DateTime
                                                                    .now()),
                                                            false));
                                              }
                                            },
                                          );
                                        });
                                  },
                                ),
                                CustomTextField(
                                  controller: _yearController,
                                  hintText: 'Select Year',
                                  widthSize: width * 0.4,
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

                                              if (_monthController
                                                  .text.isEmpty) {
                                                BlocProvider.of<ExpenseBloc>(
                                                        context)
                                                    .add(ExpenseEvent
                                                        .fetchExpense(
                                                            DateFormat('MMM')
                                                                .format(DateTime
                                                                    .now()),
                                                            yearVar,
                                                            DateFormat(
                                                                    'MMM dd yyyy')
                                                                .format(DateTime
                                                                    .now()),
                                                            false));
                                              } else {
                                                BlocProvider.of<ExpenseBloc>(
                                                        context)
                                                    .add(ExpenseEvent
                                                        .fetchExpense(
                                                            monthVar,
                                                            yearVar,
                                                            DateFormat(
                                                                    'MMM dd yyyy')
                                                                .format(DateTime
                                                                    .now()),
                                                            false));
                                              }
                                            },
                                          );
                                        });
                                  },
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.05,
                            ),
                            categoryExpense.isEmpty
                                ? CustomeText(
                                    text: "No Data Found",
                                    fontSize: width * 0.06,
                                    color: SecondaryColor)
                                : SizedBox(
                                    height: 200,
                                    child: PieChart(
                                      PieChartData(
                                        sections: _getSections(categoryExpense),
                                        centerSpaceRadius: 50,
                                        borderData: FlBorderData(show: false),
                                      ),
                                    ),
                                  ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.04, top: height * 0.06),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    for (var i = 0;
                                        i < categoryExpense.length;
                                        i++)
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: width * 0.02,
                                                right: width * 0.04),
                                            child: Container(
                                              width: width * 0.05,
                                              height: width * 0.05,
                                              color: colorsList[i],
                                            ),
                                          ),
                                          Container(
                                            width: width * 0.5,
                                            child: CustomeText(
                                                text: categoryExpense[i]
                                                    ['CATEG_NAME'],
                                                fontSize: width * 0.05,
                                                color: Colors.white),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.all(width * 0.02),
                                            child: CustomeText(
                                                text:
                                                    "₹${categoryExpense[i]['AMOUNT'].toString()}",
                                                fontSize: width * 0.05,
                                                color: QuaternaryColor),
                                          )
                                        ],
                                      )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> _getSections(Data) {
    return [
      for (var i = 0; i < Data.length; i++)
        PieChartSectionData(
          value: Data[i]['AMOUNT'],
          color: colorsList[i],
          title: "${Data[i]['PERCENTAGE'].toStringAsFixed(2)}%",
          titleStyle: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.w900),
          radius: 60,
        ),
    ];
  }

  List<Color> colorsList = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.yellow,
    Colors.cyan,
    Colors.teal,
    Colors.pink,
    Colors.lime,
    Colors.indigo,
    Colors.amber,
    Colors.brown,
    Colors.grey,
    Colors.lightBlue,
    Colors.lightGreen,
    Colors.deepOrange,
    Colors.deepPurple,
    Colors.blueGrey,
    Colors.black,
  ];
}
