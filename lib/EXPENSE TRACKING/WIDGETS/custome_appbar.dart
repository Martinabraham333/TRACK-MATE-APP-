import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:track_mate/CONSTANTS.dart';
import 'package:track_mate/EXPENSE%20TRACKING/SCREENS/Ai_Chat_Page.dart';
import 'package:track_mate/EXPENSE%20TRACKING/SCREENS/category_page.dart';
import 'package:track_mate/EXPENSE%20TRACKING/SCREENS/expense_page.dart';
import 'package:track_mate/EXPENSE%20TRACKING/SCREENS/home_page.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_text.dart';

class CustomeAppBar extends StatelessWidget {
  final String title;
  CustomeAppBar({super.key, required this.title});
  List contentList = [
    ['Home', Icons.home, const Home_Page()],
    ['Expense', Icons.payments,  ExpensePage()],
    ['Category', Icons.category, CreateCategory()],
    ['Ai Chat', Icons.chat, const Ai_Chat_Page()]
  ];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: PrimaryColor,
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: Column(
        children: [
          Center(
            child: CustomeText(
                text: title,
                fontSize: width * 0.06,
                color: SecondaryColor,
                fontWeight: FontWeight.bold),
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
                      ),
                      CustomeText(
                        text: item[0],
                        fontSize: width * 0.03,
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
