import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:track_mate/CONSTANTS.dart';
import 'package:track_mate/EXPENSE%20TRACKING/SCREENS/home_page.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_text.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 3)); // Delay for 3 seconds
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) => Home_Page()), // Replace with your Home screen
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black, // Choose your background color
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.35,
            ),
            FadeInImage(
              placeholder: AssetImage(
                  'assets/images/black.jpg'), // Transparent placeholder
              image: AssetImage('assets/images/logo.png'),
              width: width * 0.4,
              height: height * 0.2,
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
    );
  }
}
