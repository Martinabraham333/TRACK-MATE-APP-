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
  TextEditingController _resultController = TextEditingController();
  TextEditingController _displayController = TextEditingController();
  double tempvar = 0.0;
  List signList = [];

  clear() {
    _resultController.clear();
    _displayController.clear();
    signList.clear();
    setState(() {
      tempvar = 0.0;
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
            CustomeText(
              text: "Enter Expense",
              fontSize: width * 0.05,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: height * 0.05,
            ),
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
                        height: height * 0.04,
                      ),
                      TextField(
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 0.1,
                              fontWeight: FontWeight.bold),
                          readOnly: true,
                          controller: _resultController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          )),
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
                    signList.add("+");

                    setState(() {
                      if (_displayController.text.isEmpty) {
                        tempvar = double.parse(_resultController.text);
                      } else if (_displayController
                              .text[_displayController.text.length - 2] ==
                          "=") {
                        _displayController.clear();
                      } else {
                        if (signList.length == 1) {
                          tempvar =
                              tempvar + double.parse(_resultController.text);
                        } else {
                          if (signList[signList.length - 2] == "+") {
                            tempvar =
                                tempvar + double.parse(_resultController.text);
                          }
                          if (signList[signList.length - 2] == "-") {
                            tempvar =
                                tempvar - double.parse(_resultController.text);
                          }
                          if (signList[signList.length - 2] == "*") {
                            print("* condition");
                            tempvar =
                                tempvar * double.parse(_resultController.text);
                          }
                          if (signList[signList.length - 2] == "/") {
                            print("/ condition");
                            tempvar =
                                tempvar / double.parse(_resultController.text);
                          }
                        }
                      }

                      _displayController.text =
                          "${_displayController.text}${_resultController.text} + ";

                      _resultController.clear();
                    });
                    print("tempvar +  $tempvar");
                  },
                ),
                CalButton(
                  title: "-",
                  ontap: () async {
                    signList.add("-");
                    print("signList $signList");
                    setState(() {
                      if (_displayController.text.isEmpty) {
                        tempvar = double.parse(_resultController.text);
                      } else if (_displayController
                              .text[_displayController.text.length - 2] ==
                          "=") {
                        _displayController.clear();
                      } else {
                        if (signList.length == 1) {
                          tempvar =
                              tempvar - double.parse(_resultController.text);
                        } else {
                          if (signList[signList.length - 2] == "+") {
                            print("+ condition");
                            tempvar =
                                tempvar + double.parse(_resultController.text);
                          }
                          if (signList[signList.length - 2] == "-") {
                            print("- condition");
                            tempvar =
                                tempvar - double.parse(_resultController.text);
                          }
                          if (signList[signList.length - 2] == "*") {
                            print("* condition");
                            tempvar =
                                tempvar * double.parse(_resultController.text);
                          }
                          if (signList[signList.length - 2] == "/") {
                            print("/ condition");
                            tempvar =
                                tempvar / double.parse(_resultController.text);
                          }
                        }
                      }

                      _displayController.text =
                          "${_displayController.text}${_resultController.text} - ";

                      _resultController.clear();
                    });

                    print("tempvar -  $tempvar");
                  },
                ),
                CalButton(
                  title: "*",
                  ontap: () {
                    signList.add("*");
                    setState(() {
                      if (_displayController.text.isEmpty) {
                        tempvar = double.parse(_resultController.text);
                      } else if (_displayController
                              .text[_displayController.text.length - 2] ==
                          "=") {
                        _displayController.clear();
                      } else {
                        if (signList.length == 1) {
                          tempvar =
                              tempvar * double.parse(_resultController.text);
                        } else {
                          if (signList[signList.length - 2] == "+") {
                            print("+ condition");
                            tempvar =
                                tempvar + double.parse(_resultController.text);
                          }
                          if (signList[signList.length - 2] == "-") {
                            print("- condition");
                            tempvar =
                                tempvar - double.parse(_resultController.text);
                          }
                          if (signList[signList.length - 2] == "*") {
                            print("* condition");
                            tempvar =
                                tempvar * double.parse(_resultController.text);
                          }
                          if (signList[signList.length - 2] == "/") {
                            print("/ condition");
                            tempvar =
                                tempvar / double.parse(_resultController.text);
                          }
                        }
                      }

                      _displayController.text =
                          "${_displayController.text}${_resultController.text} * ";

                      _resultController.clear();
                    });
                    print("tempvar * $tempvar");
                  },
                ),
                CalButton(
                  title: "/",
                  ontap: () {
                    signList.add("/");
                    setState(() {
                      if (_displayController.text.isEmpty) {
                        tempvar = double.parse(_resultController.text);
                      } else if (_displayController
                              .text[_displayController.text.length - 2] ==
                          "=") {
                        _displayController.clear();
                      } else {
                        if (signList.length == 1) {
                          tempvar =
                              tempvar / double.parse(_resultController.text);
                        } else {
                          if (signList[signList.length - 2] == "+") {
                            print("+ condition");
                            tempvar =
                                tempvar + double.parse(_resultController.text);
                          }
                          if (signList[signList.length - 2] == "-") {
                            print("- condition");
                            tempvar =
                                tempvar - double.parse(_resultController.text);
                          }
                          if (signList[signList.length - 2] == "*") {
                            print("* condition");
                            tempvar =
                                tempvar * double.parse(_resultController.text);
                          }
                          if (signList[signList.length - 2] == "/") {
                            print("/ condition");
                            tempvar =
                                tempvar / double.parse(_resultController.text);
                          }
                        }
                      }

                      _displayController.text =
                          "${_displayController.text}${_resultController.text} / ";

                      _resultController.clear();
                    });

                    print("tempvar / $tempvar");
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
                      if (_displayController.text.length>2 && _displayController
                              .text[_displayController.text.length - 2] ==
                          "=") {
                        _displayController.clear();
                        _resultController.clear();
                      }

                      _resultController.text = "${_resultController.text}1";
                    });
                  },
                ),
                CalButton(
                  title: "2",
                  ontap: () {
                    setState(() {
                      if (_displayController.text.length>2 && _displayController
                              .text[_displayController.text.length - 2] ==
                          "=") {
                        _displayController.clear();
                        _resultController.clear();
                      }
                      _resultController.text = "${_resultController.text}2";
                    });
                  },
                ),
                CalButton(
                  title: "3",
                  ontap: () {
                    setState(() {
                      if (_displayController.text.length>2 && _displayController
                              .text[_displayController.text.length - 2] ==
                          "=") {
                        _displayController.clear();
                        _resultController.clear();
                      }
                      _resultController.text = "${_resultController.text}3";
                    });
                  },
                ),
                CalButton(
                  title: "4",
                  ontap: () {
                    setState(() {
                      if (_displayController.text.length>2 && _displayController
                              .text[_displayController.text.length - 2] ==
                          "=") {
                        _displayController.clear();
                        _resultController.clear();
                      }
                      _resultController.text = "${_resultController.text}4";
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
                      if (_displayController.text.length>2 && _displayController
                              .text[_displayController.text.length - 2] ==
                          "=") {
                        _displayController.clear();
                        _resultController.clear();
                      }
                      _resultController.text = "${_resultController.text}5";
                    });
                  },
                ),
                CalButton(
                  title: "6",
                  ontap: () {
                    setState(() {
                      if (_displayController.text.length>2 && _displayController
                              .text[_displayController.text.length - 2] ==
                          "=") {
                        _displayController.clear();
                        _resultController.clear();
                      }
                      _resultController.text = "${_resultController.text}6";
                    });
                  },
                ),
                CalButton(
                  title: "7",
                  ontap: () {
                    setState(() {
                      if (_displayController.text.length>2 && _displayController
                              .text[_displayController.text.length - 2] ==
                          "=") {
                        _displayController.clear();
                        _resultController.clear();
                      }
                      _resultController.text = "${_resultController.text}7";
                    });
                  },
                ),
                CalButton(
                  title: "8",
                  ontap: () {
                    setState(() {
                      if (_displayController.text.length>2 && _displayController
                              .text[_displayController.text.length - 2] ==
                          "=") {
                        _displayController.clear();
                        _resultController.clear();
                      }
                      _resultController.text = "${_resultController.text}8";
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
                      if (_displayController.text.length>2 && _displayController
                              .text[_displayController.text.length - 2] ==
                          "=") {
                        _displayController.clear();
                        _resultController.clear();
                      }
                      _resultController.text = "${_resultController.text}9";
                    });
                  },
                ),
                CalButton(
                  title: "0",
                  ontap: () {
                    setState(() {
                      if (_displayController.text.length>2 && _displayController
                              .text[_displayController.text.length - 2] ==
                          "=") {
                        _displayController.clear();
                        _resultController.clear();
                      }
                      _resultController.text = "${_resultController.text}0";
                    });
                  },
                ),
                CalButton(
                  title: ".",
                  ontap: () {
                    setState(() {
                      if (_displayController.text.length>2 &&  _displayController
                              .text[_displayController.text.length - 2] ==
                          "=") {
                        _displayController.clear();
                        _resultController.clear();
                      }
                      _resultController.text = "${_resultController.text}.";
                    });
                  },
                ),
                CalButton(
                  title: "<",
                  ontap: () {
                    setState(() {
                      _resultController.text = _resultController.text
                          .substring(0, _resultController.text.length - 1);
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
                ClearButton(
                  title: "Clear",
                  ontap: () {
                    clear();
                  },
                ),
                ClearButton(
                  title: "Enter",
                  ontap: () {
                    widget.ontap(_resultController.text);
                    Navigator.pop(context);
                  },
                ),
                ClearButton(
                  title: "=",
                  ontap: () {
                    print("signList $signList");
                    print("signList ${signList[signList.length - 1]}");
                    print("tempvar $tempvar");
                    setState(() {
                      // if (_displayController.text.isEmpty) {
                      //   tempvar = double.parse(_resultController.text);
                      // } else {

                      // if (signList.length == 1) {
                      if (signList[signList.length - 1] == "+") {
                        tempvar =
                            tempvar + double.parse(_resultController.text);
                      }
                      if (signList[signList.length - 1] == "-") {
                        tempvar =
                            tempvar - double.parse(_resultController.text);
                      }
                      if (signList[signList.length - 1] == "*") {
                        print("* condition");
                        tempvar =
                            tempvar * double.parse(_resultController.text);
                      }
                      if (signList[signList.length - 1] == "/") {
                        print("/ condition");
                        tempvar =
                            tempvar / double.parse(_resultController.text);
                      }

                      // } else {
                      //   if (signList[signList.length - 2] == "+") {
                      //     tempvar =
                      //         tempvar + double.parse(_resultController.text);
                      //   }
                      //   if (signList[signList.length - 2] == "-") {
                      //     tempvar =
                      //         tempvar - double.parse(_resultController.text);
                      //   }
                      //   if (signList[signList.length - 2] == "*") {
                      //     print("* condition");
                      //     tempvar =
                      //         tempvar * double.parse(_resultController.text);
                      //   }
                      //   if (signList[signList.length - 2] == "/") {
                      //     print("/ condition");

                      //     tempvar =
                      //         tempvar / double.parse(_resultController.text);
                      //   }
                      // }
                      // }

                      _displayController.text =
                          "${_displayController.text}${_resultController.text} = ";

                      _resultController.clear();
                      _resultController.text = tempvar.toString();
                    });
                    print("tempvar $tempvar");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

//   swithExpresion() {
//     var Sign = signList[signList.length - 1];
//     switch (Sign) {
//       case '+':
//         setState(() {
//           _tempController.text = (double.parse(_tempController.text) +
//                   double.parse(_resultController.text))
//               .toString();
//         });
//         break;
//       case '-':
//         setState(() {
//           _tempController.text = (double.parse(_tempController.text) -
//                   double.parse(_resultController.text))
//               .toString();
//         });
//         break;
//       case '*':
//         setState(() {
//           _tempController.text = (double.parse(_tempController.text) *
//                   double.parse(_resultController.text))
//               .toString();
//         });
//         break;
//       case '/':
//         setState(() {
//           _tempController.text = (double.parse(_tempController.text) /
//                   double.parse(_resultController.text))
//               .toString();
//         });
//         break;
//       default:
//     }
//   }
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
