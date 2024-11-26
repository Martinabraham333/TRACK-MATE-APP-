part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = Initial;
  const factory CategoryState.loading() = Loading;
  const factory CategoryState.loaded(List<CategoryModel> category, String msg,
      String title, Color color, String path) = Loaded;
  const factory CategoryState.error(
      String msg, String title, Color color, String path) = Error;
}
