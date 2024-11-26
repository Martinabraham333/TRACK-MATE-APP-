class CategoryModel {
  final String val1;
  final String val2;
  CategoryModel({required this.val1, required this.val2});

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      val1: map['CATEG_ID'].toString(),
      val2:map['CATEG_NAME'].toString()
    );
  }
}
