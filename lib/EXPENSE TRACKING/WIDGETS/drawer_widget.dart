import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:track_mate/CONSTANTS.dart';
import 'package:track_mate/DATABASE.dart';
import 'package:track_mate/EXPENSE%20TRACKING/BLOC/EXPENSE_BLOC/expense_bloc.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_text.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/yes_or_no_widget.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
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
              color: Colors.black,
            ),
            child: Column(
              children: [
                FadeInImage(
                  placeholder: AssetImage(
                      'assets/images/black.jpg'), // Transparent placeholder
                  image: AssetImage('assets/images/logo.png'),
                  width: width * 0.3,
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
           bool? yesOrNo= await yes_or_no_alert(context, "Warning !!!", "Are you sure you want to clear all the data ?");
           if (yesOrNo==true) {
               await resetDatabase();
              await initDatabase();
              BlocProvider.of<ExpenseBloc>(context).add(
                  ExpenseEvent.fetchExpense(
                      DateFormat.MMM().format(DateTime.now()),
                      DateFormat('MMM dd yyyy').format(DateTime.now())));
             
           } else {
             
           }
           
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
                  text: "settings",
                  fontSize: width * 0.05,
                  color: SecondaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
