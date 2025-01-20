part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = InitialCategory;
  const factory CategoryState.loading() = Loading;
  const factory CategoryState.loaded(List<CategoryModel> category, String msg,
     ) = Loaded;
  const factory CategoryState.error(
      String msg, ) = Error;
}
