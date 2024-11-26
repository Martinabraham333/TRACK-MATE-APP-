import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:track_mate/CONSTANTS.dart';
import 'package:track_mate/EXPENSE%20TRACKING/BLOC/CATEGORY_BLOC/category_bloc.dart';
import 'package:track_mate/EXPENSE%20TRACKING/BLOC/EXPENSE_BLOC/expense_bloc.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_alert_box.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_text.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_textfield.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custome_appbar.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custome_button.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custome_icons.dart';

class ExpensePage extends StatelessWidget {
  ExpensePage({super.key});

  TextEditingController _categoryController = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  TextEditingController _expenseController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ExpenseBloc>(context).add(ExpenseEvent.fetchExpense(
        DateFormat.MMM().format(DateTime.now()),
        DateFormat('MMM dd yyyy').format(DateTime.now())));
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
              loaded: (msg, ExpenseList, monthExp, dayExp) => _buildExpenseUi(
                  context,
                  ExpenseList,
                  _categoryController,
                  _dateController,
                  _expenseController),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (msg) => Container(),
              initial: () => _buildExpenseUi(context, [], _categoryController,
                  _dateController, _expenseController),
            );
          },
        ),
      ),
    );
  }

  Widget _buildExpenseUi(context, ExpenseList, _categoryController,
      _dateController, _expenseController) {
    var categoryId;
    var expenseId;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Column(
      children: [
        CustomeAppBar(title: "Expense"),
        SizedBox(
          height: height * 0.02,
        ),
        CustomTextField(
          controller: _categoryController,
          hintText: "Select Category",
          widthSize: width * 0.8,
          icon: Icons.category_outlined,
          ontap: () {
            BlocProvider.of<CategoryBloc>(context).add(FetchCategory());
            showDialog(
                context: context,
                builder: (context) {
                  return BlocBuilder<CategoryBloc, CategoryState>(
                    builder: (context, state) {
                      if (state is Loaded) {
                        return CustomAlertBox(
                          width: width * 0.3,
                          height: height * 0.3,
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
            controller: _expenseController,
            hintText: "Enter Expense",
            widthSize: width * 0.8),
        SizedBox(
          height: height * 0.02,
        ),
        CustomButton(
          title: 'Save',
          ontap: () {
            if (expenseId == null) {
              print("SAVE STARTED...");
              BlocProvider.of<ExpenseBloc>(context).add(ExpenseEvent.addExpense(
                  double.tryParse(_expenseController.text),
                  _dateController.text,
                  _categoryController.text,
                  categoryId));

              expenseId = null;
            } else {
              print("UPDATE STARTED...");
              BlocProvider.of<ExpenseBloc>(context).add(
                  ExpenseEvent.updateExpense(
                      double.tryParse(_expenseController.text),
                      _dateController.text,
                      expenseId,
                      categoryId));
              expenseId = null;
            }
          },
          width: width * 0.8,
        ),
        SizedBox(
          height: height * 0.03,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: ExpenseList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
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
                              iconSize: width * 0.05,
                              iconColor: SecondaryColor),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                      width: width * 0.58,
                                      child: CustomeText(
                                        text: "${ExpenseList[index].val3}",
                                        fontSize: width * 0.03,
                                        color: BlueColor,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  CustomeText(
                                    text: "${ExpenseList[index].val2} Rs",
                                    fontSize: width * 0.03,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                      width: width * 0.6,
                                      child: CustomeText(
                                        text: "${ExpenseList[index].val5}",
                                        fontSize: width * 0.03,
                                        color: greyColor,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  CustomeIcon(
                                      onTap: () {
                                        _categoryController.text =
                                            ExpenseList[index].val5.toString();
                                        _dateController.text =
                                            ExpenseList[index].val3.toString();
                                        _expenseController.text =
                                            ExpenseList[index].val2.toString();
                                        categoryId = ExpenseList[index].val4;
                                        expenseId = ExpenseList[index].val1;

                                        print(categoryId);
                                        print(expenseId);
                                      },
                                      icon: Icons.edit,
                                      iconSize: width * 0.03,
                                      iconColor: SecondaryColor),
                                  SizedBox(
                                    width: width * 0.05,
                                  ),
                                  CustomeIcon(
                                      onTap: () {
                                        BlocProvider.of<ExpenseBloc>(context)
                                            .add(ExpenseEvent.deleteExpense(
                                                ExpenseList[index].val1));
                                      },
                                      icon: Icons.delete,
                                      iconSize: width * 0.03,
                                      iconColor: SecondaryColor)
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ],
    ));
  }
}
