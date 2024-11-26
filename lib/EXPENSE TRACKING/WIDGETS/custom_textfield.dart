import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:track_mate/CONSTANTS.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final IconData? icon;
  final double widthSize;
  final bool? readonly;
  final VoidCallback? ontap;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.widthSize,
    this.icon,
    this.readonly,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: widthSize,
      height: height * 0.07,
      decoration: BoxDecoration(
          border: Border.all(color: SecondaryColor),
          borderRadius: BorderRadius.circular(width * 0.03)),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(
            left: width * 0.03,
          ),
          child: TextField(
            readOnly: readonly ?? false,
            cursorColor: SecondaryColor,
            controller: controller,
            style: TextStyle(
                color: SecondaryColor,
                fontSize: width * 0.03,
                fontWeight: FontWeight.bold),
            decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                hintText: hintText,
                border: InputBorder.none,
                suffixIcon: GestureDetector(
                  onTap: ontap,
                  child: Icon(
                    icon,
                    color: BlueColor,
                  ),
                )),
          ),
        ),
      ),
    );
  }
}

class CustomDateTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;

  final double widthSize;
  final bool? readonly;
  final Function(dynamic) ontap;
  const CustomDateTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.widthSize,
    this.readonly,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: widthSize,
      height: height * 0.07,
      decoration: BoxDecoration(
          border: Border.all(color: SecondaryColor),
          borderRadius: BorderRadius.circular(width * 0.03)),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(
            left: width * 0.03,
          ),
          child: TextField(
            readOnly: readonly ?? false,
            cursorColor: SecondaryColor,
            controller: controller,
            style: TextStyle(
                color: SecondaryColor,
                fontSize: width * 0.03,
                fontWeight: FontWeight.bold),
            decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                hintText: hintText,
                border: InputBorder.none,
                suffixIcon: GestureDetector(
                  onTap: () async {
                    DateTime? selectDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                      builder: (BuildContext context, Widget? child) {
                        return Theme(
                          data: ThemeData.light().copyWith(
                            dialogBackgroundColor: TertiaryColor,
                            textTheme: const TextTheme(
                              headlineMedium: TextStyle(color: Colors.white),
                            ),
                            colorScheme: ColorScheme.light(
                              primary: Colors.blue,
                              onPrimary: Colors.white,
                              surface: TertiaryColor,
                              onSurface: Colors.white,
                            ),
                          ),
                          child: child!,
                        );
                      },
                    );

                    if (selectDate != null) {
                      String FormatedDate = DateFormat('MMM dd yyyy')
                          .format(selectDate)
                          .toString();
                      await ontap(FormatedDate);
                    }
                  },
                  child: Icon(Icons.calendar_month_outlined, color: BlueColor),
                )),
          ),
        ),
      ),
    );
  }
}
