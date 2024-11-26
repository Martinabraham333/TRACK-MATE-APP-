class ExpenseModel {
  final String val1;
  final String val2;
  final String val3;
  final String val4;
  final String val5;
  ExpenseModel({required this.val1, required this.val2,required this.val3,required this.val4, required this.val5});

  factory ExpenseModel.fromMap(Map<String, dynamic> map) {
    return ExpenseModel(
      val1: map['EXPENSE_ID'].toString(),
      val2:map['AMOUNT'].toString(),
      val3:map['DATE'].toString(),
      val4:map['CATEG_ID'].toString(),
      val5:map['CATEG_NAME'].toString()
    );
  }
}
