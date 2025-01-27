// ignore_for_file: depend_on_referenced_packages

import 'dart:io';

import 'package:intl/intl.dart';
import 'package:path/path.dart' as path;
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:open_filex/open_filex.dart';

GenerateExpenseReport(ExpenseList) async {
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
  pdf.addPage(pw.Page(build: (pw.Context context) {
    return pw.ListView.builder(
        itemBuilder: (context, index) {
          return pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Row(children: [
                  pw.Padding(
                      padding: pw.EdgeInsets.all(10),
                      child: pdfDateText(ExpenseData[index].keys.first)),
                  pw.Padding(
                      padding: pw.EdgeInsets.all(10),
                      child: pdfDayExpenseText("INR ${ExpenseData[index][DateList[index]]![0]['DAY_EXPENSE'].toString()}")),
                ]),
                pw.Table(border: pw.TableBorder.all(), children: [
                  for (var item in ExpenseData[index][DateList[index]]!)
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
        itemCount: ExpenseData.length);
  }));

  Directory? downloadsDirectory;
  if (Platform.isAndroid) {
    downloadsDirectory = Directory('/storage/emulated/0/Download');
  }
  var filePath = "${downloadsDirectory!.path}/Expense_report.pdf";
  print(filePath);
  final file = File(path.join(downloadsDirectory!.path, 'Expense_report.pdf'));

  await file.writeAsBytes(await pdf.save());
  print("PDF SAVED");
  await OpenFilex.open(filePath);
}

pdfDateText(date) {
  return pw.Text(date,
      style: pw.TextStyle(
          fontSize: 14, fontWeight: pw.FontWeight.bold, color: PdfColors.blue));
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
