part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.addCategory(categoryName) = AddCategory;
  const factory CategoryEvent.fetchCategory() = FetchCategory;
  const factory CategoryEvent.deleteCategory(categoryId) = DeleteCategory;
  const factory CategoryEvent.updateCategory(categoryId,categoryName) = UpdateCategory;
}