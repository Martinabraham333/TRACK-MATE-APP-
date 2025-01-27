import 'package:flutter/material.dart';
import 'package:track_mate/CONSTANTS.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_text.dart';

class Monthselection extends StatelessWidget {
  final Function onTap;
  Monthselection({super.key, required this.onTap});

  final List<List<String>> months = [
    ["January", "Jan"],
    ["February", "Feb"],
    ["March", "Mar"],
    ["April", "Apr"],
    ["May", "May"],
    ["June", "Jun"],
    ["July", "Jul"],
    ["August", "Aug"],
    ["September", "Sep"],
    ["October", "Oct"],
    ["November", "Nov"],
    ["December", "Dec"],
  ];
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Dialog(
        backgroundColor: TertiaryColor,
        child: Container(
          height: height * 0.6,
          width: width * 0.5,
          child: Padding(
            padding: EdgeInsets.all(width * 0.02),
            child: ListView.builder(
                itemCount: months.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      return onTap(months[index]);
                    },
                    child: Card(
                      color: PrimaryColor,
                      child: Padding(
                        padding: EdgeInsets.all(width * 0.02),
                        child: CustomeText(
                          text: months[index][0],
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ));
  }
}

class Yearselection extends StatelessWidget {
  final Function onTap;
  Yearselection({super.key, required this.onTap});

  final List Years = List.generate(50, (index) {
    return 2024 + index;
  });

  Widget build(BuildContext context) {
      print(Years);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Dialog(
        backgroundColor: TertiaryColor,
        child: Container(
          height: height * 0.6,
          width: width * 0.5,
          child: Padding(
            padding: EdgeInsets.all(width * 0.02),
            child: ListView.builder(
                itemCount: Years.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      return onTap(Years[index]);
                    },
                    child: Card(
                      color: PrimaryColor,
                      child: Padding(
                        padding: EdgeInsets.all(width * 0.02),
                        child: CustomeText(
                          text: Years[index].toString(),
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ));
  }
}
