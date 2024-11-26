import 'package:flutter/material.dart';
import 'package:track_mate/CONSTANTS.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback ontap;
  final double width;
  const CustomButton({super.key, required this.title, required this.ontap, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
        decoration: BoxDecoration(
            color: BlueColor, borderRadius: BorderRadius.circular(10)),
        child: TextButton(
            onPressed: ontap,
            child: Text(
              title,
              style: TextStyle(color: SecondaryColor, fontSize: width * 0.05),
            )));
  }
}
