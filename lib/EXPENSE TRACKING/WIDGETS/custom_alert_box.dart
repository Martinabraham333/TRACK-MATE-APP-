import 'package:flutter/material.dart';
import 'package:track_mate/CONSTANTS.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_text.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custome_icons.dart';

class CustomAlertBox extends StatelessWidget {
  final double width;
  final double height;
  final String title;
  final List DataList;
  final Function(dynamic) ontap;
  const CustomAlertBox(
      {super.key,
      required this.width,
      required this.height,
      required this.title,
      required this.DataList,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: TertiaryColor,
      title: Text(
        title,
        style: TextStyle(color: SecondaryColor, fontWeight: FontWeight.bold),
      ),
      content: SizedBox(
        height: height,
        width: width,
        child: ListView.builder(
            itemCount: DataList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(width * 0.01),
                child: GestureDetector(
                  onTap: () {
                    ontap(DataList[index]);
                            Navigator.pop(context);
                  },
                  child: Card(
                    color: PrimaryColor,
                    child: Padding(
                      padding: EdgeInsets.all(width * 0.1),
                      child: Row(
                        children: [
                          CustomeIcon(
                              onTap: null,
                              icon: Icons.circle_outlined,
                              iconSize: width * 0.08,
                              iconColor: SecondaryColor),
                          SizedBox(
                            width: width * 0.1,
                          ),
                          Text(
                            DataList[index].val2,
                            style: TextStyle(
                                color: SecondaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.1),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: CustomeText(
                text: "Close", fontSize: width * 0.1, color: SecondaryColor))
      ],
    );
  }
}
