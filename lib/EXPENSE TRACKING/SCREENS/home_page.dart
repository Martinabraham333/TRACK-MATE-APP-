import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:track_mate/CONSTANTS.dart';
import 'package:track_mate/EXPENSE%20TRACKING/BLOC/EXPENSE_BLOC/expense_bloc.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_text.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custome_appbar.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
     BlocProvider.of<ExpenseBloc>(context).add(ExpenseEvent.fetchExpense(
        DateFormat.MMM().format(DateTime.now()),
        DateFormat('MMM dd yyyy').format(DateTime.now())));
    return Scaffold(
        backgroundColor: PrimaryColor,
        body: BlocBuilder<ExpenseBloc, ExpenseState>(
          builder: (context, state) {
            return state.when(
                loaded: (msg, ExpenseList,monthExp,dayExp) => _homePageUi(context,monthExp,dayExp),
                loading: () => Text("LOADING"),
                error: (MSG) => Text("ERROR"),
                initial: () => Text("INITIAL"));
          },
        ));
  }

  Widget _homePageUi(context,monthExp,dayExp) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Column(
        children: [
          CustomeAppBar(title: "Home"),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: width * 0.4,
                  height: height * 0.3,
                  decoration: BoxDecoration(
                    color: TertiaryColor,
                  ),
                  child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomeText(
                        text: "Monthly\nExpense",
                        fontSize: width * 0.05,
                        color: greyColor,
                        fontWeight: FontWeight.bold,
                      ),
                      CustomeText(
                        text: "₹$monthExp",
                        fontSize: width * 0.05,
                        color: redColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: width * 0.4,
                  height: height * 0.3,
                  decoration: BoxDecoration(
                    color: TertiaryColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomeText(
                        text: "Daily\nExpense",
                        fontSize: width * 0.05,
                        color: greyColor,
                        fontWeight: FontWeight.bold,
                      ),
                      CustomeText(
                        text: "₹$dayExp",
                        fontSize: width * 0.05,
                        color: redColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
