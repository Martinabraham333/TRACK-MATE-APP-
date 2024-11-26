import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:track_mate/CONSTANTS.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custome_appbar.dart';

class Ai_Chat_Page extends StatelessWidget {
  const Ai_Chat_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: PrimaryColor,
      body: SafeArea(
        child: Column(
          children: [
            CustomeAppBar(
              title: 'Sophia',
            ),
        ],),
      ),
    );
  }
}