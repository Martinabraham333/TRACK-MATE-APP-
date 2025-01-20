import 'package:flutter/material.dart';
import 'package:track_mate/CONSTANTS.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback ontap;
  final double width;
  const CustomButton(
      {super.key,
      required this.title,
      required this.ontap,
      required this.width});

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

class CalButton extends StatelessWidget {
  final String title;
  final VoidCallback ontap;

  const CalButton({
    super.key,
    required this.title,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
        width: width * 0.15,
        height: width * 0.15,
        decoration: BoxDecoration(
            color: PrimaryColor, borderRadius: BorderRadius.circular(10)),
        child: TextButton(
            onPressed: ontap,
            child: Text(
              title,
              style: TextStyle(color: SecondaryColor, fontSize: width * 0.05),
            )));
  }
}

class ClearButton extends StatelessWidget {
  final String title;
  final VoidCallback ontap;

  const ClearButton({
    super.key,
    required this.title,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
        width: width * 0.2,
        height: width * 0.15,
        decoration: BoxDecoration(
            color: PrimaryColor, borderRadius: BorderRadius.circular(10)),
        child: TextButton(
            onPressed: ontap,
            child: Text(
              title,
              style: TextStyle(color: SecondaryColor, fontSize: width * 0.05),
            )));
  }
}