import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:track_mate/CONSTANTS.dart';
import 'package:track_mate/EXPENSE%20TRACKING/BLOC/CATEGORY_BLOC/category_bloc.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_text.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custome_icons.dart';

class CustomAlertBox extends StatefulWidget {
  final String title;
  final List DataList;
  final Function(dynamic) ontap;
  CustomAlertBox(
      {super.key,
      required this.title,
      required this.DataList,
      required this.ontap});

  @override
  State<CustomAlertBox> createState() => _CustomAlertBoxState();
}

class _CustomAlertBoxState extends State<CustomAlertBox> {
  final TextEditingController _searchController = TextEditingController();
@override
  void initState() {
      BlocProvider.of<CategoryBloc>(context).add(const FetchCategory());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return AlertDialog(
      backgroundColor: TertiaryColor,
      title: Text(
        widget.title,
        style: TextStyle(color: SecondaryColor, fontWeight: FontWeight.bold),
      ),
      content: Column(
      mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: width * 0.0, right: width * 0.0, bottom: height * 0.02),
            child: TextField(
              onChanged: (value) {
                print('value $value');
                BlocProvider.of<CategoryBloc>(context)
                    .add(CategoryEvent.searchCategory(value));
              },
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              controller: _searchController,
              decoration: InputDecoration(
                hintText: "Search Category",
                hintStyle: TextStyle(color: Colors.grey),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2),
                ),
              ),
            ),
          ),
          SizedBox(
                  height: height*0.4,
              width: width,      
            child: ListView.builder(
                itemCount: widget.DataList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(width * 0.01),
                    child: GestureDetector(
                      onTap: () {
                        widget.ontap(widget.DataList[index]);
                        Navigator.pop(context);
                      },
                      child: Card(
                        color: PrimaryColor,
                        child: Padding(
                          padding: EdgeInsets.all(width * 0.04),
                          child: Row(
                            children: [
                              CustomeIcon(
                                  onTap: null,
                                  icon: Icons.circle_outlined,
                                  iconSize: width * 0.04,
                                  iconColor: SecondaryColor),
                              SizedBox(
                                width: width * 0.04,
                              ),
                              Text(
                                widget.DataList[index].val2,
                                style: TextStyle(
                                    color: SecondaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: width * 0.04),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: CustomeText(
                text: "Close", fontSize: width * 0.04, color: SecondaryColor))
      ],
    );
  }
}

alertBoxMessage(context, message) {
  return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Material(
            color: PrimaryColor,
            elevation: 6.0,
            shadowColor: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    message,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 19.0,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Close",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
