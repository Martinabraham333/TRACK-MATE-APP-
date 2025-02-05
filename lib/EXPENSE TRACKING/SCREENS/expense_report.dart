// ignore_for_file: depend_on_referenced_packages

import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart' as path;
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:open_filex/open_filex.dart';
import 'package:track_mate/EXPENSE%20TRACKING/BLOC/EXPENSE_BLOC/expense_bloc.dart';


GenerateExpenseReport(context, ExpenseList, Month, Year, TotalMonthExpense,
    EachCategoryExpesne) async {
  DateFormat dateFormat = DateFormat("MMM dd yyyy");
  ExpenseList.sort((a, b) {
    DateTime dateA = dateFormat.parse(a["DATE"]);
    DateTime dateB = dateFormat.parse(b["DATE"]);
    return dateA.compareTo(dateB); // Ascending order
  });

  print("GENERATE EXPENSE REPORT $ExpenseList");

  List<Map<String, List<Map<String, dynamic>>>> ExpenseData = [];

  List DateList = [];
  for (var item in ExpenseList) {
    DateList.add(item['DATE'].toString());
  }
  DateList = DateList.toSet().toList();
  print("DateList $DateList");

  for (var i = 0; i < DateList.length; i++) {
    ExpenseData.add({DateList[i]: []});
  }

  for (var i = 0; i < DateList.length; i++) {
    for (var item in ExpenseList) {
      if (DateList[i] == item['DATE'].toString()) {
        ExpenseData[i][DateList[i]]!.add(item);
      }
    }
  }
  print("ExpenseData  ${ExpenseData.length}");
  final pdf = pw.Document();
  pdf.addPage(pw.MultiPage(build: (pw.Context context) {
    return [
      pw.Column(children: [
        pdfHeadText("$Month $Year Expense Report"),
        pw.SizedBox(height: 40),
        pw.Row(children: [
          pdfCustomBoldText("Monthly Expense :", PdfColors.black, 18.0),
          pdfCustomBoldText(" $TotalMonthExpense", PdfColors.red, 18.0),
        ]),
        pw.SizedBox(height: 10),
        pw.Table(border: pw.TableBorder.all(), children: [
          pw.TableRow(children: [
            pw.Container(
                width: 100,
                height: 50,
                child: pw.Padding(
                    padding: pw.EdgeInsets.all(10),
                    child:
                        pdfCustomBoldText("Category", PdfColors.blue, 18.0))),
            pw.Container(
                width: 150,
                height: 50,
                child: pw.Padding(
                    padding: pw.EdgeInsets.all(10),
                    child: pdfCustomBoldText(
                        "Total Amount", PdfColors.blue, 18.0))),
            pw.Container(
                width: 100,
                height: 50,
                child: pw.Padding(
                    padding: pw.EdgeInsets.all(10),
                    child:
                        pdfCustomBoldText("Percentage", PdfColors.blue, 18.0)))
          ]),
          for (var item in EachCategoryExpesne)
            pw.TableRow(children: [
              pw.Container(
                  width: 100,
                  height: 50,
                  child: pw.Padding(
                      padding: pw.EdgeInsets.all(10),
                      child: pdfCustomBoldText(
                          item['CATEG_NAME'], PdfColors.black, 18.0))),
              pw.Container(
                  width: 150,
                  height: 50,
                  child: pw.Padding(
                      padding: pw.EdgeInsets.all(10),
                      child: pdfCustomBoldText(
                          item['AMOUNT'].toString(), PdfColors.black, 18.0))),
              pw.Container(
                  width: 100,
                  height: 50,
                  child: pw.Padding(
                      padding: pw.EdgeInsets.all(10),
                      child: pdfCustomBoldText(
                          item['PERCENTAGE'].toStringAsFixed(2),
                          PdfColors.black,
                          18.0)))
            ])
        ]),
        pw.SizedBox(height: 50),
        pw.Align(
          alignment: pw.Alignment.topLeft,
          child: pdfCustomBoldText(
              "Details of Daily Expenses", PdfColors.black, 18.0),
        ),
        pw.SizedBox(height: 10),
        ...ExpenseData.map(
          (expense) {
            return pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Row(children: [
                    pw.Padding(
                        padding: pw.EdgeInsets.all(10),
                        child: pdfDateText(expense.keys.first)),
                    pw.Padding(
                        padding: pw.EdgeInsets.all(10),
                        child: pdfDayExpenseText(
                            "INR ${expense[expense.keys.first]![0]['DAY_EXPENSE'].toString()}")),
                  ]),
                  pw.Table(border: pw.TableBorder.all(), children: [
                    for (var item in expense[expense.keys.first]!)
                      pw.TableRow(children: [
                        pw.Container(
                            width: 300,
                            height: 30,
                            child: pw.Padding(
                              padding: pw.EdgeInsets.all(10),
                              child: pdfText(item['CATEG_NAME']),
                            )),
                        pw.Container(
                            width: 300,
                            height: 30,
                            child: pw.Padding(
                              padding: pw.EdgeInsets.all(10),
                              child: pdfText("INR ${item['AMOUNT']}"),
                            )),
                      ])
                  ])
                ]);
          },
        )
      ])
    ];
  }));

  Directory? downloadsDirectory;
  if (Platform.isAndroid) {
    downloadsDirectory = Directory('/storage/emulated/0/Download');
  }
  var filePath =
      "${downloadsDirectory!.path}/${Month}_${Year}_Expense_Report.pdf";
  print(filePath);
  final file = File(path.join(
      downloadsDirectory.path, '${Month}_${Year}_Expense_Report.pdf'));

  await file.writeAsBytes(await pdf.save());
  print("PDF SAVED");
  await OpenFilex.open(filePath);

  BlocProvider.of<ExpenseBloc>(context).add( ExpenseEvent.filterExpense(
                                                        "Jan",
                                                        2020,
                                                        false),);
}

pdfDateText(date) {
  return pw.Text(date,
      style: pw.TextStyle(
          fontSize: 14, fontWeight: pw.FontWeight.bold, color: PdfColors.blue));
}

pdfHeadText(date) {
  return pw.Text(date,
      style: pw.TextStyle(
          fontSize: 20,
          fontWeight: pw.FontWeight.bold,
          color: PdfColors.black));
}

pdfCustomBoldText(date, color, fontSize) {
  return pw.Text(date,
      style: pw.TextStyle(
          fontSize: fontSize, fontWeight: pw.FontWeight.bold, color: color));
}

pdfDayExpenseText(date) {
  return pw.Text(date,
      style: pw.TextStyle(
          fontSize: 14, fontWeight: pw.FontWeight.bold, color: PdfColors.red));
}

pdfText(date) {
  return pw.Text(date,
      style: pw.TextStyle(
          fontSize: 12,
          fontWeight: pw.FontWeight.bold,
          color: PdfColors.black));
}
