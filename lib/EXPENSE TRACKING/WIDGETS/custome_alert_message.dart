import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:track_mate/CONSTANTS.dart';
import 'package:track_mate/EXPENSE%20TRACKING/BLOC/CATEGORY_BLOC/category_bloc.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_text.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custome_icons.dart';

class CustomAlertMessage extends StatelessWidget {
  final Color color;
  final String title;
  final String message;
  final String path;

  const CustomAlertMessage(
      {super.key,
      required this.color,
      required this.title,
      required this.message,
      required this.path});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return AlertDialog(
      backgroundColor: Colors.white,
      
      content: Container(
        decoration: BoxDecoration(color: Colors.white),
        width: width * 0.5,
      
        child: Column(
            mainAxisSize: MainAxisSize.min,
          children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: CustomeIcon(
                        onTap: () {
                              BlocProvider.of<CategoryBloc>(context).add(const FetchCategory());
                          Navigator.pop(context);
                        },
                        icon: Icons.close,
                        iconSize: width * 0.05,
                        iconColor: PrimaryColor),
                  ),
            Image(
              width: width * 0.1,
              height: height * 0.1,
              image: AssetImage(path),
            ),
            CustomeText(
              text: title,
              fontSize: width * 0.05,
              color: color,
              fontWeight: FontWeight.bold,
            ),
            CustomeText(
              text: message,
              fontSize: width * 0.03,
              color: PrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
        
      ),
      
    );
  }
}
