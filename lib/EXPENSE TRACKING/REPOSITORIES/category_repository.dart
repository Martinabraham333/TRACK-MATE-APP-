import 'package:track_mate/DATABASE.dart';
import 'package:track_mate/EXPENSE%20TRACKING/MODELS/category_model.dart';

class CategoryRepository {
  addCategory(categoryName) async {
    final resp = await db.rawInsert(
        'INSERT INTO CATEGORY (CATEG_NAME) VALUES (?)', [categoryName]);
    print("Response After Inserting Category : $resp");
  }

  fetchCategory() async {
    final List<CategoryModel> category = [];
    final resp = await db.rawQuery('SELECT * FROM CATEGORY');
    print("Response After Fetching Category : $resp");

    for (var element in resp) {
      category.add(CategoryModel.fromMap(element));
    }
    return category;
  }

  deleteCategory(categoryId) async {
    final resp = await db.rawDelete(
      'DELETE FROM CATEGORY WHERE CATEG_ID = ?',
      [categoryId],
    );
    print("Response After Deleting Category: $resp");
  }

  updateCategory(categoryId,categoryName) async {
    final resp = await db.rawUpdate(
      'UPDATE CATEGORY  SET CATEG_NAME = ? WHERE CATEG_ID = ?',
      [categoryName, categoryId],
    );
    print("Response After Updating Category: $resp");
  }
}
