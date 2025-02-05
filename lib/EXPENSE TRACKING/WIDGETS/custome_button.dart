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
    final width1 = MediaQuery.of(context).size.width;
    final height1 = MediaQuery.of(context).size.height;
    return Container(
        width: width,
        decoration: BoxDecoration(
            color: BlueColor, borderRadius: BorderRadius.circular(10)),
        child: TextButton(
            onPressed: ontap,
            child: Text(
              title,
              style: TextStyle(color: SecondaryColor, fontSize: width1 * 0.04),
            )));
  }
}

class RefreshButton extends StatelessWidget {
  final String title;
  final VoidCallback ontap;

  const RefreshButton({
    super.key,
    required this.title,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    final width1 = MediaQuery.of(context).size.width;
    final height1 = MediaQuery.of(context).size.height;
    return TextButton(
        onPressed: ontap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(color: SecondaryColor, fontSize: width1 * 0.05),
            ),
            SizedBox(
              width: width1 * 0.02,
            ),
            Icon(
              Icons.refresh,
              color: Colors.blue,
              size: width1 * 0.06,
            )
          ],
        ));
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
