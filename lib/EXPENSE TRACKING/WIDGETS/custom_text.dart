import 'package:flutter/material.dart';
import 'package:track_mate/CONSTANTS.dart';

class CustomeText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight? fontWeight;
  const CustomeText(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.color,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight ?? FontWeight.normal,
        ),
      ),
    );
  }
}
