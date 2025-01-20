import 'package:flutter/material.dart';
import 'package:track_mate/CONSTANTS.dart';

import 'package:track_mate/EXPENSE%20TRACKING/BLOC/CATEGORY_BLOC/category_bloc.dart';
import 'package:track_mate/EXPENSE%20TRACKING/MODELS/category_model.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_alert_box.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_text.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_textfield.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custome_appbar.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custome_icons.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/drawer_widget.dart';

class CreateCategory extends StatefulWidget {
  CreateCategory({super.key});

  @override
  State<CreateCategory> createState() => _CreateCategoryState();
}

class _CreateCategoryState extends State<CreateCategory> {
  final TextEditingController _categoryController = TextEditingController();

  List<CategoryModel> CategoryList = [];
  @override
  void initState() {
    BlocProvider.of<CategoryBloc>(context).add(const FetchCategory());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: PrimaryColor,
      body: BlocListener<CategoryBloc, CategoryState>(
        listener: (context, state) {
          if (state is Loaded) {
            _categoryController.clear();
          }
        },
        child: BlocBuilder<CategoryBloc, CategoryState>(
          builder: (context, state) {
            return state.when(
              loaded: (
                List<CategoryModel> category,
                String msg,
              ) {
                CategoryList = category;
                return _buildCreateCategoryUi(
                    context, _categoryController, category);
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              initial: () {
                return Center(child: CircularProgressIndicator());
              },
              error: (msg) {
                return Center(child: CircularProgressIndicator());
              },
            );
          },
        ),
      ),
          drawer: DrawerWidget(),
      bottomSheet: Container(
        color: PrimaryColor,
        child: Padding(
          padding: EdgeInsets.only(bottom: height * 0.05),
          child: CustomTextField(
            controller: _categoryController,
            hintText: "Category...",
            widthSize: width * 0.8,
            icon: Icons.add,
            ontap: () {
              if (_categoryController.text.isNotEmpty) {
                BlocProvider.of<CategoryBloc>(context)
                    .add(AddCategory(_categoryController.text));
              } else {
                  alertBoxMessage(context, 'Enter Category Name ...!');
              }
            },
          ),
        ),
      ),
    );
  }

  Widget _buildCreateCategoryUi(
    context,
    _categoryController,
    List<CategoryModel> category,
  ) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Column(
        children: [
          CustomeAppBar(
            title: 'Category', menuOntap: () { Scaffold.of(context).openDrawer();  },
          ),
          category.isEmpty
              ? Column(
                  children: [
                    SizedBox(
                      height: height * 0.2,
                    ),
                    CustomeText(
                      text: "No Category Added",
                      fontSize: width * 0.05,
                      color: SecondaryColor,
                    ),
                  ],
                )
              : Expanded(
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
                                        BlocProvider.of<CategoryBloc>(context)
                                            .add(UpdateCategory(
                                                category[index].val1,
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
                                        BlocProvider.of<CategoryBloc>(context)
                                            .add(DeleteCategory(
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
        ],
      ),
    );
  }
}
