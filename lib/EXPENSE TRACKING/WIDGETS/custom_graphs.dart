// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:track_mate/CONSTANTS.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_text.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custome_icons.dart';

class CustomGraphBudget extends StatelessWidget {
  final String title;
  final double budget;
  final double expense;
  final VoidCallback deleteOntap;
  final VoidCallback editOntap;
  CustomGraphBudget(
      {super.key,
      required this.title,
      required this.budget,
      required this.expense,
      required this.deleteOntap,
      required this.editOntap});

  double budget_1 = 0.0;
  double expense_1 = 0.0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    budget_1 = (budget / budget) * 100;
    double? expense_1 =
        double.tryParse(((expense / budget) * 100).toStringAsFixed(2));

    return Container(
      width: width * 0.9,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomeText(
              text: title,
              fontSize: 20,
              color: SecondaryColor,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 10,
                  width: budget_1 * 1.5,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                CustomeText(
                    text: "$budget_1 %", fontSize: 15, color: SecondaryColor),
                SizedBox(
                  width: width * 0.04,
                ),
                CustomeText(
                  text: "$budget Rs",
                  fontSize: 15,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                expense_1! > 105
                    ? Row(
                        children: [
                          Container(
                            height: 10,
                            width: 150,
                            color: Colors.red,
                          ),
                          Container(
                            height: 10,
                            width: 20,
                            color: Colors.yellow,
                          ),
                        ],
                      )
                    : Container(
                        height: 10,
                        width: expense_1! * 1.5,
                        color: Colors.red,
                      ),
                SizedBox(
                  width: width * 0.02,
                ),
                CustomeText(
                    text: "$expense_1 %", fontSize: 15, color: SecondaryColor),
                SizedBox(
                  width: width * 0.04,
                ),
                CustomeText(
                  text: "$expense Rs",
                  fontSize: 15,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                expense_1! > 100
                    ? SizedBox(
                        width: width * 0.5,
                        child: CustomeText(
                          text: "Exceeded by : ${expense - budget} Rs",
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    : SizedBox(
                        width: width * 0.5,
                        child: CustomeText(
                          text: "Bal : ${budget - expense} Rs",
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                SizedBox(
                  width: width * 0.1,
                ),
                CustomeIcon(
                    onTap: editOntap,
                    icon: Icons.edit,
                    iconSize: width * 0.04,
                    iconColor: SecondaryColor),
                SizedBox(
                  width: width * 0.15,
                ),
                CustomeIcon(
                    onTap: deleteOntap,
                    icon: Icons.delete,
                    iconSize: width * 0.04,
                    iconColor: SecondaryColor)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
