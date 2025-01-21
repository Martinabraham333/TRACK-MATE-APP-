import 'dart:io';
import 'package:intl/intl.dart';
import 'package:path/path.dart' as path;
import 'package:pdf/widgets.dart' as pw;
import 'package:open_filex/open_filex.dart';

GenerateExpenseReport(ExpenseList) async {
  print("GENERATE EXPENSE REPORT");
  print("ExpenseList $ExpenseList");

  List expenseData = [];
  List<String> dates = [];
  DateTime now = DateTime.now();

  DateTime firstDay = DateTime(now.year, now.month, 1);
  DateTime lastDay = DateTime(now.year, now.month + 1, 0);

  DateFormat formatter = DateFormat("MMM dd yyyy");

  // for (int i = 0; i <= lastDay.difference(firstDay).inDays; i++) {
  //   DateTime currentDate = firstDay.add(Duration(days: i));
  //   dates.add(formatter.format(currentDate));
  // }

  // for (var date in dates) {
  //   for (var expesne in ExpenseList) {
  //     List tempExpense = [];
  //     List dayExpense = [];
  //     if (date == expesne['DATE']) {
  //       tempExpense.add({
  //         'EXPENSE_ID':expesne['EXPENSE_ID'],
  //         'AMOUNT':expesne['AMOUNT'],
  //         'DATE':expesne['DATE'],
  //         'CATEG_ID':expesne['CATEG_ID'],
  //         'CATEG_NAME':expesne['CATEG_NAME'],
  //         'DAY_EXPENSE':expesne['DAY_EXPENSE'],
  //       });
  //     }
  //   }
  // }

  // print("dates $dates");
  List Temp = [];
  double amount = 0.0;
  for (var i = 0; i < ExpenseList.length - 2; i++) {
    if (ExpenseList[i]['DATE'] == ExpenseList[i + 1]['DATE']) {
      amount = amount == 0.0 ? double.parse(ExpenseList[i]['AMOUNT'].toString()) : amount +
          double.parse(ExpenseList[i+1]['AMOUNT'].toString());
      Temp.add({
        'EXPENSE_ID': ExpenseList[i]['EXPENSE_ID'],
        'AMOUNT': amount,
        'DATE': ExpenseList[i]['DATE'],
        'CATEG_ID': ExpenseList[i]['CATEG_ID'],
        'CATEG_NAME': ExpenseList[i]['CATEG_NAME'],
        'DAY_EXPENSE': ExpenseList[i]['DAY_EXPENSE'],
      });
    } else {
      amount = 0.0;
      Temp.add({
        'EXPENSE_ID': ExpenseList[i]['EXPENSE_ID'],
        'AMOUNT': ExpenseList[i]['AMOUNT'],
        'DATE': ExpenseList[i]['DATE'],
        'CATEG_ID': ExpenseList[i]['CATEG_ID'],
        'CATEG_NAME': ExpenseList[i]['CATEG_NAME'],
        'DAY_EXPENSE': ExpenseList[i]['DAY_EXPENSE'],
      });
    }
  }
  print("Temp $Temp");
  final pdf = pw.Document();
  pdf.addPage(pw.Page(build: (pw.Context context) {
    return pw.Column(children: [
      for (var item in ExpenseList)
        pw.Column(children: [
          pw.Column(children: [
            pw.Text(item['DATE'].toString()),
            pw.Text(item['CATEG_NAME'].toString()),
            pw.Text(item['AMOUNT'].toString()),
            pw.Text(item['DAY_EXPENSE'].toString()),
          ])
        ])
    ]);
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
