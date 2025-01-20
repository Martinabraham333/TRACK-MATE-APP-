import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:track_mate/CONSTANTS.dart';
import 'package:track_mate/DATABASE.dart';
import 'package:track_mate/EXPENSE%20TRACKING/BLOC/EXPENSE_BLOC/expense_bloc.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_text.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custome_appbar.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/drawer_widget.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  void initState() {
    super.initState();
    BlocProvider.of<ExpenseBloc>(context).add(ExpenseEvent.fetchExpense(
        DateFormat.MMM().format(DateTime.now()),
        DateFormat('MMM dd yyyy').format(DateTime.now())));
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
                          eachDayTotalExpenseList) =>
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
                  initial: () => Center(
                          child: CircularProgressIndicator(
                        color: Colors.white,
                      )));
            },
          );
        }),
        drawer: DrawerWidget());
  }

  Widget _homePageUi(context, monthExp, dayExp, categoryExpense, averageExpense,
      predictedExpense) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CustomeAppBar(
              title: "Home",
              menuOntap: () {
                Scaffold.of(context).openDrawer();
              },
            ),
            Padding(
              padding: EdgeInsets.only(
                top: height * 0.02,
                left: width * 0.04,
                right: width * 0.04,
              ),
              child: categoryExpense.isEmpty
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
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                            Container(
                              width: width * 0.8,
                              child: CustomeText(
                                text:
                                    "Navigate to Category Page and Create Category",
                                fontSize: width * 0.05,
                                color: Colors.grey,
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
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                            Container(
                              width: width * 0.8,
                              child: CustomeText(
                                text:
                                    "Navigate to Expense Page and Create Expense",
                                fontSize: width * 0.05,
                                color: Colors.grey,
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
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                            Container(
                              width: width * 0.8,
                              child: CustomeText(
                                text:
                                    "Navigate to Budget Page if you want to add budget for each category",
                                fontSize: width * 0.05,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: height * 0.2,
                          width: width * 0.4,
                          color: TertiaryColor,
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
                                  text: "$monthExp Rs",
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
                                  text:
                                      "${predictedExpense.toStringAsFixed(2)} Rs",
                                  fontSize: width * 0.04,
                                  color: Colors.red),
                            ],
                          ),
                        ),
                        Container(
                          height: height * 0.2,
                          width: width * 0.4,
                          color: TertiaryColor,
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
                                  text: "$dayExp Rs",
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
                                  text:
                                      "${averageExpense.toStringAsFixed(2)} Rs",
                                  fontSize: width * 0.04,
                                  color: Colors.red),
                            ],
                          ),
                        ),
                      ],
                    ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Column(
              children: [
                SizedBox(
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
                  padding:
                      EdgeInsets.only(left: width * 0.04, top: height * 0.06),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        for (var i = 0; i < categoryExpense.length; i++)
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: width * 0.02, right: width * 0.04),
                                child: Container(
                                  width: width * 0.05,
                                  height: width * 0.05,
                                  color: colorsList[i],
                                ),
                              ),
                              Container(
                                width: width * 0.5,
                                child: CustomeText(
                                    text: categoryExpense[i]['CATEG_NAME'],
                                    fontSize: width * 0.05,
                                    color: Colors.white),
                              ),
                              Padding(
                                padding: EdgeInsets.all(width * 0.02),
                                child: CustomeText(
                                    text:
                                        "${categoryExpense[i]['AMOUNT'].toString()} Rs",
                                    fontSize: width * 0.05,
                                    color: Colors.grey),
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
