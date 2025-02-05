import 'package:flutter/material.dart';
import 'package:track_mate/CONSTANTS.dart';
import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custom_text.dart';

import 'package:track_mate/EXPENSE%20TRACKING/WIDGETS/custome_button.dart';

class CalculatorWidget extends StatefulWidget {
  final Function ontap;
  const CalculatorWidget({super.key, required this.ontap});

  @override
  State<CalculatorWidget> createState() => _CalculatorWidgetState();
}

class _CalculatorWidgetState extends State<CalculatorWidget> {
  // TextEditingController _resultController = TextEditingController();
  TextEditingController _displayController = TextEditingController();
  TextEditingController _tempdisplayController = TextEditingController();

  double resultVar = 0.0;

  List numberSignList = [];

  clear() {
    _displayController.clear();
    _tempdisplayController.clear();
    setState(() {
      resultVar = 0.0;
      numberSignList = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return AlertDialog(
      backgroundColor: TertiaryColor,
      content: SingleChildScrollView(
        child: Column(
          children: [
            // CustomeText(
            //   text: "Enter Expense",
            //   fontSize: width * 0.05,
            //   color: Colors.white,
            //   fontWeight: FontWeight.bold,
            // ),
            // SizedBox(
            //   height: height * 0.05,
            // ),
            Container(
              width: width,
              height: height * 0.25,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(20)),
              child: Padding(
                  padding: EdgeInsets.only(left: width * 0.03),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.02,
                      ),
                      TextField(
                          maxLines: 3,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: width * 0.05,
                              fontWeight: FontWeight.bold),
                          readOnly: true,
                          controller: _displayController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          )),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: CustomeText(
                              text: resultVar == 0.0 ? "" : "$resultVar",
                              fontSize: width * 0.1,
                              color: Colors.white))
                    ],
                  )),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CalButton(
                  title: "+",
                  ontap: () {
                    setState(() {
                      if (_displayController
                              .text[_displayController.text.length - 1] !=
                          ' ') {
                        _displayController.text =
                            _displayController.text + " + ";
                      }
                    });

                    _tempdisplayController.clear();
                  },
                ),
                CalButton(
                  title: "-",
                  ontap: () async {
                    setState(() {
                      if (_displayController
                              .text[_displayController.text.length - 1] !=
                          ' ') {
                        _displayController.text =
                            _displayController.text + " - ";
                      }
                    });

                    _tempdisplayController.clear();
                  },
                ),
                CalButton(
                  title: "*",
                  ontap: () {
                    setState(() {
                      if (_displayController
                              .text[_displayController.text.length - 1] !=
                          ' ') {
                        _displayController.text =
                            _displayController.text + " * ";
                      }
                    });

                    _tempdisplayController.clear();
                  },
                ),
                CalButton(
                  title: "/",
                  ontap: () {
                    setState(() {
                      if (_displayController
                              .text[_displayController.text.length - 1] !=
                          ' ') {
                        _displayController.text =
                            _displayController.text + " / ";
                      }
                    });

                    _tempdisplayController.clear();
                  },
                ),
              ],
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CalButton(
                  title: "1",
                  ontap: () {
                    setState(() {
                      _displayController.text = _displayController.text + "1";
                    });
                  },
                ),
                CalButton(
                  title: "2",
                  ontap: () {
                    setState(() {
                      _displayController.text = _displayController.text + "2";
                    });
                  },
                ),
                CalButton(
                  title: "3",
                  ontap: () {
                    setState(() {
                      _displayController.text = _displayController.text + "3";
                    });
                  },
                ),
                CalButton(
                  title: "4",
                  ontap: () {
                    setState(() {
                      _displayController.text = _displayController.text + "4";
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CalButton(
                  title: "5",
                  ontap: () {
                    setState(() {
                      _displayController.text = _displayController.text + "5";
                    });
                  },
                ),
                CalButton(
                  title: "6",
                  ontap: () {
                    setState(() {
                      _displayController.text = _displayController.text + "6";
                    });
                  },
                ),
                CalButton(
                  title: "7",
                  ontap: () {
                    setState(() {
                      _displayController.text = _displayController.text + "7";
                    });
                  },
                ),
                CalButton(
                  title: "8",
                  ontap: () {
                    setState(() {
                      _displayController.text = _displayController.text + "8";
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CalButton(
                  title: "9",
                  ontap: () {
                    setState(() {
                      _displayController.text = _displayController.text + "9";
                    });
                  },
                ),
                CalButton(
                  title: "0",
                  ontap: () {
                    setState(() {
                      _displayController.text = _displayController.text + "0";
                    });
                  },
                ),
                CalButton(
                  title: ".",
                  ontap: () {
                    setState(() {
                      _displayController.text = _displayController.text + ".";
                    });
                  },
                ),
                CalButton(
                    title: "<",
                    ontap: () {
                      if (_displayController.text.isNotEmpty) {
                        setState(() {
                          if (_displayController.text[_displayController.text.length - 1] ==
                                      ' ' &&
                                  _displayController.text[
                                          _displayController.text.length - 2] ==
                                      '+' ||
                              _displayController.text[_displayController.text.length - 1] ==
                                      ' ' &&
                                  _displayController.text[
                                          _displayController.text.length - 2] ==
                                      '-' ||
                              _displayController.text[_displayController.text.length - 1] ==
                                      ' ' &&
                                  _displayController.text[
                                          _displayController.text.length - 2] ==
                                      '*' ||
                              _displayController.text[_displayController.text.length - 1] ==
                                      ' ' &&
                                  _displayController
                                          .text[_displayController.text.length - 2] ==
                                      '/') {
                            _displayController.text = _displayController.text
                                .substring(
                                    0, _displayController.text.length - 3);
                          }
                          //  else if (_displayController
                          //           .text[_displayController.text.length - 1] ==
                          //       ' ') {
                          //     _displayController.text = _displayController.text
                          //         .substring(
                          //             0, _displayController.text.length - 2);
                          //   }

                          else {
                            _displayController.text = _displayController.text
                                .substring(
                                    0, _displayController.text.length - 1);
                          }
                        });
                      }
                    }),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClearButton(
                  title: "Clear",
                  ontap: () {
                    clear();
                  },
                ),
                ClearButton(
                  title: "Enter",
                  ontap: () async {
                    double tempresultVar=0.0;

                    setState(() {
                      numberSignList = _displayController.text.split(' ');
                    });

                    _tempdisplayController.clear();
                    print("numberSignList $numberSignList");
                    if (numberSignList[numberSignList.length - 1] !=
                        '') {
                      print("CONDITION else if");
                      for (var i = 0; i < numberSignList.length; i++) {
                        if (i == 0) {
                          setState(() {
                            tempresultVar = double.parse(numberSignList[i]);
                          });
                        } else if (numberSignList[i] == "+") {
                          setState(() {
                            tempresultVar =
                                tempresultVar + double.parse(numberSignList[i + 1]);
                          });
                        } else if (numberSignList[i] == "-") {
                          setState(() {
                            tempresultVar =
                                tempresultVar - double.parse(numberSignList[i + 1]);
                          });
                        } else if (numberSignList[i] == "*") {
                          setState(() {
                            tempresultVar =
                                tempresultVar * double.parse(numberSignList[i + 1]);
                          });
                        } else if (numberSignList[i] == "/") {
                          setState(() {
                            tempresultVar =
                                tempresultVar / double.parse(numberSignList[i + 1]);
                          });
                        }
                      }
                    } else {
                      print("CONDITION else ");
                      setState(() {
                        tempresultVar = 0.0;
                      });
                    }

                    print("tempresultVar  $tempresultVar");
                    // await Future.delayed(Duration(seconds: 1));
                    widget.ontap(tempresultVar.toString());
                    Navigator.pop(context);
                  },
                ),
                ClearButton(
                  title: "=",
                  ontap: () {
                    setState(() {
                      numberSignList = _displayController.text.split(' ');
                    });

                    _tempdisplayController.clear();
                    print("numberSignList $numberSignList");

                    if (numberSignList[numberSignList.length - 1] != '') {
                      print("CONDITION TRUE");
                      for (var i = 0; i < numberSignList.length; i++) {
                        if (i == 0) {
                          setState(() {
                            resultVar = double.parse(numberSignList[i]);
                          });
                        } else if (numberSignList[i] == "+") {
                          setState(() {
                            resultVar =
                                resultVar + double.parse(numberSignList[i + 1]);
                          });
                        } else if (numberSignList[i] == "-") {
                          setState(() {
                            resultVar =
                                resultVar - double.parse(numberSignList[i + 1]);
                          });
                        } else if (numberSignList[i] == "*") {
                          setState(() {
                            resultVar =
                                resultVar * double.parse(numberSignList[i + 1]);
                          });
                        } else if (numberSignList[i] == "/") {
                          setState(() {
                            resultVar =
                                resultVar / double.parse(numberSignList[i + 1]);
                          });
                        }
                      }
                    } else {
                      setState(() {
                        resultVar = 0.0;
                      });
                    }

                    print("resultVar  $resultVar");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CalText extends StatelessWidget {
  final String text;

  const CalText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: width * 0.05,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
