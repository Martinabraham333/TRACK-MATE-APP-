import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:track_mate/EXPENSE%20TRACKING/MODELS/category_model.dart';
import 'package:track_mate/EXPENSE%20TRACKING/REPOSITORIES/category_repository.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryRepository repository;
  CategoryBloc(this.repository) : super(InitialCategory()) {
    on<AddCategory>(_addCategory);
    on<FetchCategory>(_fetchCategory);
    on<DeleteCategory>(_deleteCategory);
    on<UpdateCategory>(_updateCategory);
    on<SearchCategory>(_searchCategory);
  }

  _addCategory(AddCategory event, Emitter<CategoryState> emit) async {
    emit(CategoryState.loading());
    try {
      if (event.categoryName == '') {
        emit(CategoryState.error(
          "Category Name Cannot be empty",
        ));
        print("Category Name Cannot be empty");
      } else {
        await repository.addCategory(event.categoryName);
        final category = await repository.fetchCategory();
        emit(CategoryState.loaded(
          category,
          "Category Added Successfully",
        ));
      }
    } catch (e) {
      emit(CategoryState.error(
        "An error occurred while adding the category",
      ));
    }
  }

  List CATEGORY = [];
  _fetchCategory(FetchCategory event, Emitter<CategoryState> emit) async {
    emit(CategoryState.loading());
    try {
      final category = await repository.fetchCategory();
      CATEGORY = category;
      emit(CategoryState.loaded(
        category,
        "",
      ));
    } catch (e) {
      emit(CategoryState.error(
        "An error occurred while fetching the category",
      ));
    }
  }

  _searchCategory(SearchCategory event, Emitter<CategoryState> emit) async {
    final category;

    category = CATEGORY.where((item) {
      return item.val2
          .toString()
          .toLowerCase()
          .contains(event.categoryName.toString().toLowerCase());
    }).toList();
 
    emit(CategoryState.loaded(
      category,
      "",
    ));
  }

  _deleteCategory(DeleteCategory event, Emitter<CategoryState> emit) async {
    emit(CategoryState.loading());
    try {
      await repository.deleteCategory(event.categoryId);

      final category = await repository.fetchCategory();
      emit(CategoryState.loaded(
        category,
        "Category Deleted Successfully",
      ));
    } catch (e) {
      emit(CategoryState.error(
        "An error occurred while deleting the category",
      ));
    }
  }

  _updateCategory(UpdateCategory event, Emitter<CategoryState> emit) async {
    emit(CategoryState.loading());
    try {
      await repository.updateCategory(event.categoryId, event.categoryName);

      final category = await repository.fetchCategory();
      emit(CategoryState.loaded(
        category,
        "Category Updated Successfully",
      ));
    } catch (e) {
      emit(CategoryState.error(
        "An error occurred while updating the category",
      ));
    }
  }
}
