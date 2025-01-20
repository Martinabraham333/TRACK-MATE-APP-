// ignore_for_file: void_checks

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:track_mate/CONSTANTS.dart';

import 'package:track_mate/EXPENSE%20TRACKING/BLOC/BUDGET_BLOC/budget_bloc.dart';
import 'package:track_mate/EXPENSE%20TRACKING/BLOC/CATEGORY_BLOC/category_bloc.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_alert_box.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_graphs.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_text.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_textfield.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custome_appbar.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custome_button.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custome_icons.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/drawer_widget.dart';

class BudgetPage extends StatefulWidget {
  BudgetPage({super.key});

  @override
  State<BudgetPage> createState() => _BudgetPageState();
}

class _BudgetPageState extends State<BudgetPage> {
  TextEditingController _categoryController = TextEditingController();

  TextEditingController _budgetController = TextEditingController();

  @override
  void initState() {
    super.initState();
    BlocProvider.of<BudgetBloc>(context).add(BudgetEvent.fetchBudget());
  }

  var categoryId;
  var budgetId;
  List categoryList = [];
  bool isDelete = false;
  List categoryIdList = [];
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return BlocListener<BudgetBloc, BudgetState>(
      listener: (context, state) {
        if (state is BudgetLoaded) {
          _categoryController.clear();

          _budgetController.clear();
        }
      },
      child: Scaffold(
        backgroundColor: PrimaryColor,
        body: BlocBuilder<BudgetBloc, BudgetState>(
          builder: (context, state) {
            return state.when(
                loaded: (
                  msg,
                  BudgetList,
                  monthlyExpense,
                ) {
                  return _buildBudgetUi(context, BudgetList, monthlyExpense);
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (msg) => Center(child: CircularProgressIndicator()),
                initial: () => Center(child: CircularProgressIndicator()));
          },
        ),
        drawer: DrawerWidget(),
        bottomNavigationBar: BlocBuilder<BudgetBloc, BudgetState>(
          builder: (context, state) {
            if (state is BudgetLoaded) {
              return Container(
                  color: BlueColor,
                  height: height * 0.08,
                  child: CustomeIcon(
                      onTap: () {
                        _categoryController.clear();

                        _budgetController.clear();
                        BlocProvider.of<CategoryBloc>(context)
                            .add(const FetchCategory());
                        categoryList.clear();
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return BlocBuilder<CategoryBloc, CategoryState>(
                                builder: (context, state) {
                                  if (state is Loaded) {
                                    for (var element in state.category) {
                                      if (!categoryIdList
                                          .contains(element.val1)) {
                                        categoryList.add(element);
                                      }
                                    }
                                    if (categoryList.isNotEmpty) {
                                      return _buildFormFileds();
                                    } else if (categoryIdList.isEmpty) {
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
                                    } else {
                                      return Container(
                                        color: PrimaryColor,
                                        height: height * 5,
                                        width: double.infinity,
                                        child: Center(
                                            child: CustomeText(
                                          text:
                                              "All Category Budgets Are Added",
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
                      iconColor: SecondaryColor));
            }
            return Container();
          },
        ),
      ),
    );
  }

  Widget _buildFormFileds() {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      color: PrimaryColor,
      child: Column(
        children: [
          CustomTextField(
            controller: _categoryController,
            hintText: "Select Category",
            widthSize: width * 0.8,
            icon: Icons.category_outlined,
            ontap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return CustomAlertBox(
                      width: width * 0.3,
                      height: height * 0.3,
                      title: "Category",
                      DataList: categoryList,
                      ontap: (value) {
                        _categoryController.text = value.val2;
                        categoryId = value.val1;
                      },
                    );
                  });
            },
          ),
          SizedBox(
            height: height * 0.02,
          ),
          CustomTextField(
              controller: _budgetController,
              hintText: "Enter Budget",
              widthSize: width * 0.8),
          SizedBox(
            height: height * 0.02,
          ),
          CustomButton(
            title: 'Save',
            ontap: () {
              if (budgetId == null &&
                  _categoryController.text.isNotEmpty &&
                  _budgetController.text.isNotEmpty) {
                print("SAVE STARTED...");

                BlocProvider.of<BudgetBloc>(context).add(BudgetEvent.addBudget(
                    double.tryParse(_budgetController.text),
                    _categoryController.text,
                    categoryId));

                budgetId = null;
              } else if (_categoryController.text.isEmpty ||
                  _budgetController.text.isEmpty) {
                print("All Fields Are Mandatory ");
               return alertBoxMessage(context, 'All Fields Are Mandatory ...!');
              } else {
                print("UPDATE STARTED... $budgetId  $categoryId");
                BlocProvider.of<BudgetBloc>(context).add(
                    BudgetEvent.updateBudget(
                        double.tryParse(_budgetController.text),
                        budgetId,
                        categoryId));
                budgetId = null;
              }
              Navigator.pop(context);

              _categoryController.clear();

              _budgetController.clear();
            },
            width: width * 0.8,
          ),
        ],
      ),
    );
  }

  Widget _buildBudgetUi(
    context,
    BudgetList,
    monthlyExpense,
  ) {
    categoryIdList.clear();
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Column(
      children: [
        CustomeAppBar(
          title: "Budget",
          menuOntap: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        BlocBuilder<BudgetBloc, BudgetState>(
          builder: (context, state) {
            if (state is BudgetLoaded && state.BudgetList.isNotEmpty) {
              return Column(
                children: [
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.03),
                        child: Container(
                          color: Colors.blue,
                          width: 20,
                          height: 20,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.03),
                        child: CustomeText(
                          text: "Budget",
                          fontSize: 18,
                          color: SecondaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.03),
                        child: Container(
                          color: Colors.red,
                          width: 20,
                          height: 20,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.03),
                        child: CustomeText(
                          text: "Expense",
                          fontSize: 18,
                          color: SecondaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            } else {
              return Column(
                children: [
                  SizedBox(
                    height: height * 0.2,
                  ),
                  CustomeText(
                    text: "No Budgets Added",
                    fontSize: width * 0.05,
                    color: SecondaryColor,
                  ),
                ],
              );
            }
          },
        ),
        SizedBox(
          height: height * 0.03,
        ),
        Expanded(
          child: Padding(
              padding:
                  EdgeInsets.only(left: width * 0.03, bottom: height * 0.01),
              child: ListView.builder(
                  itemCount: BudgetList.length,
                  itemBuilder: (context, index) {
                    categoryIdList.add(BudgetList[index].val1);
                    print("BudgetList $BudgetList");
                    return Padding(
                      padding: EdgeInsets.only(bottom: height * 0.02),
                      child: Container(
                        width: double.infinity,
                        color: TertiaryColor,
                        child: Column(
                          children: [
                            SizedBox(
                              height: height * 0.02,
                            ),
                            CustomGraphBudget(
                              title: BudgetList[index].val5,
                              budget: double.parse(
                                  BudgetList[index].val2.toString()),
                              expense: double.parse(
                                  BudgetList[index].val6.toString()),
                              deleteOntap: () {
                                context.read<BudgetBloc>().add(
                                    BudgetEvent.deleteBudget(
                                        BudgetList[index].val1));
                              },
                              editOntap: () {
                                _categoryController.text =
                                    BudgetList[index].val5.toString();

                                _budgetController.text =
                                    BudgetList[index].val2.toString();
                                budgetId = BudgetList[index].val1;
                                categoryId = BudgetList[index].val4;
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return _buildFormFileds();
                                    });
                              },
                            ),
                            SizedBox(
                              height: height * 0.02,
                            )
                          ],
                        ),
                      ),
                    );
                  })),
        ),
      ],
    ));
  }
}
