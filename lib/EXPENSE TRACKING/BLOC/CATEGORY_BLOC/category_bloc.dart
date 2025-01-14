import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:track_mate/CONSTANTS.dart';
import 'package:track_mate/EXPENSE%20TRACKING/MODELS/category_model.dart';
import 'package:track_mate/EXPENSE%20TRACKING/REPOSITORIES/category_repository.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryRepository repository;
  CategoryBloc(this.repository) : super(Initial()) {
    on<AddCategory>(_addCategory);
    on<FetchCategory>(_fetchCategory);
    on<DeleteCategory>(_deleteCategory);
    on<UpdateCategory>(_updateCategory);
  }

  _addCategory(AddCategory event, Emitter<CategoryState> emit) async {
    emit(CategoryState.loading());
    try {
      await repository.addCategory(event.categoryName);
      final category = await repository.fetchCategory();
      emit(CategoryState.loaded(category, "Category Added Successfully",
          "SUCCESS...!!!", successColor, pathSuccess));
    } catch (e) {
      emit( CategoryState.error(
          "An error occurred while adding the category", "ERROR...!!!", errorColor, pathError));
    }
  }

  _fetchCategory(FetchCategory event, Emitter<CategoryState> emit) async {
        emit(CategoryState.loading());
    try {
      final category = await repository.fetchCategory();
      emit(CategoryState.loaded(category, "", "", PrimaryColor, ''));
    } catch (e) {
      emit( CategoryState.error(
          "An error occurred while fetching the category", "ERROR...!!!", errorColor, pathError));
    }
  }

  _deleteCategory(DeleteCategory event, Emitter<CategoryState> emit) async {
        emit(CategoryState.loading());
    try {
      await repository.deleteCategory(event.categoryId);

      final category = await repository.fetchCategory();
      emit(CategoryState.loaded(category, "Category Deleted Successfully",
          "SUCCESS...!!!", successColor, pathSuccess));
    } catch (e) {
      emit( CategoryState.error(
          "An error occurred while deleting the category", "ERROR...!!!", errorColor, pathError));
    }
  }

  _updateCategory(UpdateCategory event, Emitter<CategoryState> emit) async {
        emit(CategoryState.loading());
    try {
      await repository.updateCategory(event.categoryId, event.categoryName);

      final category = await repository.fetchCategory();
      emit(CategoryState.loaded(category, "Category Updated Successfully",
          "SUCCESS...!!!", successColor, pathSuccess));
    } catch (e) {
      emit( CategoryState.error(
          "An error occurred while updating the category", "ERROR...!!!", errorColor, pathError));
    }
  }
}
