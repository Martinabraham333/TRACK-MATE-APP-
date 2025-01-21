import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:track_mate/CONSTANTS.dart';
import 'package:track_mate/EXPENSE%20TRACKING/SCREENS/budget_page.dart';
import 'package:track_mate/EXPENSE%20TRACKING/SCREENS/category_page.dart';
import 'package:track_mate/EXPENSE%20TRACKING/SCREENS/expense_page.dart';
import 'package:track_mate/EXPENSE%20TRACKING/SCREENS/home_page.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_text.dart';

class CustomeAppBar extends StatelessWidget {
  final String title;
  final VoidCallback menuOntap;
  CustomeAppBar({super.key, required this.title, required this.menuOntap});
  List contentList = [
    ['Home', Icons.home, const Home_Page()],
    ['Expense', Icons.payments, ExpensePage()],
    ['Category', Icons.category, CreateCategory()],
    ['Budget', Icons.attach_money, BudgetPage()]
  ];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color:darkTheme? PrimaryColor:Colors.deepOrange,
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: Column(
        children: [
          SizedBox(
            height: height * 0.01,
          ),
          Row(
            children: [
              TextButton(
                  onPressed: menuOntap,
                  child: Icon(
                    Icons.menu,
                    color: SecondaryColor,
                    size: width * 0.06,
                  )),
              CustomeText(
                  text: title,
                  fontSize: width * 0.06,
                  color: SecondaryColor,
                  fontWeight: FontWeight.bold),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              for (var item in contentList)
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return item[2];
                    }));
                  },
                  child: Column(
                    children: [
                      Icon(
                        item[1],
                        color: SecondaryColor,
                        size: width * 0.06,
                      ),
                      CustomeText(
                        text: item[0],
                        fontSize: width * 0.04,
                        color: SecondaryColor,
                        fontWeight: FontWeight.bold,
                      )
                    ],
                  ),
                ),
              const SizedBox(),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
