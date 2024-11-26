import 'package:flutter/material.dart';
import 'package:track_mate/CONSTANTS.dart';
import 'package:track_mate/CONSTANTS.dart';
import 'package:track_mate/EXPENSE%20TRACKING/BLOC/CATEGORY_BLOC/category_bloc.dart';
import 'package:track_mate/EXPENSE%20TRACKING/MODELS/category_model.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_textfield.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custome_alert_message.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custome_appbar.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custome_icons.dart';

class CreateCategory extends StatelessWidget {
  CreateCategory({super.key});
  final TextEditingController _val2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CategoryBloc>(context).add(const FetchCategory());
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: PrimaryColor,
        body: BlocListener<CategoryBloc, CategoryState>(
          listener: (context, state) {
            // if (state is Loaded) {
            //   if (state.msg.isNotEmpty) {
            //     showDialog(
            //         context: context,
            //         builder: (context) {
            //           return CustomAlertMessage(
            //               color: state.color,
            //               title: state.title,
            //               message: state.msg,
            //               path: state.path);
            //         });
            //   }

            //   _val2Controller.clear();
            // }

            // if (state is Error) {
            //   showDialog(
            //       context: context,
            //       barrierDismissible: false,
            //       builder: (context) {
            //         return CustomAlertMessage(
            //             color: state.color,
            //             title: state.title,
            //             message: state.msg,
            //             path: state.path);
            //       });
            // }
          },
          child: BlocBuilder<CategoryBloc, CategoryState>(
            builder: (context, state) {
              return state.when(
                  loaded: (List<CategoryModel> category, String msg,
                          String title, Color color, String path) =>
                      _buildCreateCategoryUi(
                          context, _val2Controller, category),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  initial: () => _buildCreateCategoryUi(
                      context, _val2Controller, []),
                  error: (msg, String title, Color color, String path) =>
                      Center(child: Text(msg)));
            },
          ),
        ));
  }

  Widget _buildCreateCategoryUi(
    context,
    _val2Controller,
    List<CategoryModel> category,
  ) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Column(
        children: [
          CustomeAppBar(
            title: 'Category',
          ),
          Expanded(
            child: ListView.builder(
                itemCount: category.length,
                itemBuilder: (context, index) {
                  TextEditingController _listViewController =
                      TextEditingController(text: category[index].val2);

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width * 0.1),
                        color: TertiaryColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * 0.05,
                            ),
                            SizedBox(
                              width: width * 0.6,
                              child: TextField(
                                cursorColor: SecondaryColor,
                                style: TextStyle(
                                    color: SecondaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: width * 0.04),
                                controller: _listViewController,
                                decoration: const InputDecoration(
                                    border: InputBorder.none),
                              ),
                            ),
                            CustomeIcon(
                                onTap: () {
                                  BlocProvider.of<CategoryBloc>(context).add(
                                      UpdateCategory(category[index].val1,
                                          _listViewController.text));
                                },
                                icon: Icons.system_update_alt,
                                iconSize: width * 0.05,
                                iconColor: SecondaryColor),
                            SizedBox(
                              width: width * 0.1,
                            ),
                            CustomeIcon(
                                onTap: () {
                                  BlocProvider.of<CategoryBloc>(context).add(
                                      DeleteCategory(
                                          category[index].val1));
                                },
                                icon: Icons.delete,
                                iconSize: width * 0.05,
                                iconColor: SecondaryColor)
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Container(
            height: height * 0.2,
            decoration: BoxDecoration(
                color: PrimaryColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: width * 0.02,
                ),
                CustomTextField(
                  controller: _val2Controller,
                  hintText: "Category...",
                 
                  widthSize: width * 0.8,
                ),
                CustomeIcon(
                    onTap: () {
                      BlocProvider.of<CategoryBloc>(context)
                          .add(AddCategory(_val2Controller.text));
                    },
                    icon: Icons.add,
                    iconSize: width * 0.08,
                    iconColor: SecondaryColor),
                SizedBox(
                  width: width * 0.02,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
