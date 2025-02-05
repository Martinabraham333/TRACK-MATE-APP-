// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic categoryName) addCategory,
    required TResult Function() fetchCategory,
    required TResult Function(dynamic categoryId) deleteCategory,
    required TResult Function(dynamic categoryId, dynamic categoryName)
        updateCategory,
    required TResult Function(dynamic categoryName) searchCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic categoryName)? addCategory,
    TResult? Function()? fetchCategory,
    TResult? Function(dynamic categoryId)? deleteCategory,
    TResult? Function(dynamic categoryId, dynamic categoryName)? updateCategory,
    TResult? Function(dynamic categoryName)? searchCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic categoryName)? addCategory,
    TResult Function()? fetchCategory,
    TResult Function(dynamic categoryId)? deleteCategory,
    TResult Function(dynamic categoryId, dynamic categoryName)? updateCategory,
    TResult Function(dynamic categoryName)? searchCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(FetchCategory value) fetchCategory,
    required TResult Function(DeleteCategory value) deleteCategory,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(SearchCategory value) searchCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddCategory value)? addCategory,
    TResult? Function(FetchCategory value)? fetchCategory,
    TResult? Function(DeleteCategory value)? deleteCategory,
    TResult? Function(UpdateCategory value)? updateCategory,
    TResult? Function(SearchCategory value)? searchCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCategory value)? addCategory,
    TResult Function(FetchCategory value)? fetchCategory,
    TResult Function(DeleteCategory value)? deleteCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(SearchCategory value)? searchCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res, CategoryEvent>;
}

/// @nodoc
class _$CategoryEventCopyWithImpl<$Res, $Val extends CategoryEvent>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddCategoryImplCopyWith<$Res> {
  factory _$$AddCategoryImplCopyWith(
          _$AddCategoryImpl value, $Res Function(_$AddCategoryImpl) then) =
      __$$AddCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic categoryName});
}

/// @nodoc
class __$$AddCategoryImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$AddCategoryImpl>
    implements _$$AddCategoryImplCopyWith<$Res> {
  __$$AddCategoryImplCopyWithImpl(
      _$AddCategoryImpl _value, $Res Function(_$AddCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = freezed,
  }) {
    return _then(_$AddCategoryImpl(
      freezed == categoryName ? _value.categoryName! : categoryName,
    ));
  }
}

/// @nodoc

class _$AddCategoryImpl implements AddCategory {
  const _$AddCategoryImpl(this.categoryName);

  @override
  final dynamic categoryName;

  @override
  String toString() {
    return 'CategoryEvent.addCategory(categoryName: $categoryName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCategoryImpl &&
            const DeepCollectionEquality()
                .equals(other.categoryName, categoryName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(categoryName));

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCategoryImplCopyWith<_$AddCategoryImpl> get copyWith =>
      __$$AddCategoryImplCopyWithImpl<_$AddCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic categoryName) addCategory,
    required TResult Function() fetchCategory,
    required TResult Function(dynamic categoryId) deleteCategory,
    required TResult Function(dynamic categoryId, dynamic categoryName)
        updateCategory,
    required TResult Function(dynamic categoryName) searchCategory,
  }) {
    return addCategory(categoryName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic categoryName)? addCategory,
    TResult? Function()? fetchCategory,
    TResult? Function(dynamic categoryId)? deleteCategory,
    TResult? Function(dynamic categoryId, dynamic categoryName)? updateCategory,
    TResult? Function(dynamic categoryName)? searchCategory,
  }) {
    return addCategory?.call(categoryName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic categoryName)? addCategory,
    TResult Function()? fetchCategory,
    TResult Function(dynamic categoryId)? deleteCategory,
    TResult Function(dynamic categoryId, dynamic categoryName)? updateCategory,
    TResult Function(dynamic categoryName)? searchCategory,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(categoryName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(FetchCategory value) fetchCategory,
    required TResult Function(DeleteCategory value) deleteCategory,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(SearchCategory value) searchCategory,
  }) {
    return addCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddCategory value)? addCategory,
    TResult? Function(FetchCategory value)? fetchCategory,
    TResult? Function(DeleteCategory value)? deleteCategory,
    TResult? Function(UpdateCategory value)? updateCategory,
    TResult? Function(SearchCategory value)? searchCategory,
  }) {
    return addCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCategory value)? addCategory,
    TResult Function(FetchCategory value)? fetchCategory,
    TResult Function(DeleteCategory value)? deleteCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(SearchCategory value)? searchCategory,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(this);
    }
    return orElse();
  }
}

abstract class AddCategory implements CategoryEvent {
  const factory AddCategory(final dynamic categoryName) = _$AddCategoryImpl;

  dynamic get categoryName;

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCategoryImplCopyWith<_$AddCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCategoryImplCopyWith<$Res> {
  factory _$$FetchCategoryImplCopyWith(
          _$FetchCategoryImpl value, $Res Function(_$FetchCategoryImpl) then) =
      __$$FetchCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCategoryImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$FetchCategoryImpl>
    implements _$$FetchCategoryImplCopyWith<$Res> {
  __$$FetchCategoryImplCopyWithImpl(
      _$FetchCategoryImpl _value, $Res Function(_$FetchCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchCategoryImpl implements FetchCategory {
  const _$FetchCategoryImpl();

  @override
  String toString() {
    return 'CategoryEvent.fetchCategory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic categoryName) addCategory,
    required TResult Function() fetchCategory,
    required TResult Function(dynamic categoryId) deleteCategory,
    required TResult Function(dynamic categoryId, dynamic categoryName)
        updateCategory,
    required TResult Function(dynamic categoryName) searchCategory,
  }) {
    return fetchCategory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic categoryName)? addCategory,
    TResult? Function()? fetchCategory,
    TResult? Function(dynamic categoryId)? deleteCategory,
    TResult? Function(dynamic categoryId, dynamic categoryName)? updateCategory,
    TResult? Function(dynamic categoryName)? searchCategory,
  }) {
    return fetchCategory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic categoryName)? addCategory,
    TResult Function()? fetchCategory,
    TResult Function(dynamic categoryId)? deleteCategory,
    TResult Function(dynamic categoryId, dynamic categoryName)? updateCategory,
    TResult Function(dynamic categoryName)? searchCategory,
    required TResult orElse(),
  }) {
    if (fetchCategory != null) {
      return fetchCategory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(FetchCategory value) fetchCategory,
    required TResult Function(DeleteCategory value) deleteCategory,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(SearchCategory value) searchCategory,
  }) {
    return fetchCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddCategory value)? addCategory,
    TResult? Function(FetchCategory value)? fetchCategory,
    TResult? Function(DeleteCategory value)? deleteCategory,
    TResult? Function(UpdateCategory value)? updateCategory,
    TResult? Function(SearchCategory value)? searchCategory,
  }) {
    return fetchCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCategory value)? addCategory,
    TResult Function(FetchCategory value)? fetchCategory,
    TResult Function(DeleteCategory value)? deleteCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(SearchCategory value)? searchCategory,
    required TResult orElse(),
  }) {
    if (fetchCategory != null) {
      return fetchCategory(this);
    }
    return orElse();
  }
}

abstract class FetchCategory implements CategoryEvent {
  const factory FetchCategory() = _$FetchCategoryImpl;
}

/// @nodoc
abstract class _$$DeleteCategoryImplCopyWith<$Res> {
  factory _$$DeleteCategoryImplCopyWith(_$DeleteCategoryImpl value,
          $Res Function(_$DeleteCategoryImpl) then) =
      __$$DeleteCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic categoryId});
}

/// @nodoc
class __$$DeleteCategoryImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$DeleteCategoryImpl>
    implements _$$DeleteCategoryImplCopyWith<$Res> {
  __$$DeleteCategoryImplCopyWithImpl(
      _$DeleteCategoryImpl _value, $Res Function(_$DeleteCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
  }) {
    return _then(_$DeleteCategoryImpl(
      freezed == categoryId ? _value.categoryId! : categoryId,
    ));
  }
}

/// @nodoc

class _$DeleteCategoryImpl implements DeleteCategory {
  const _$DeleteCategoryImpl(this.categoryId);

  @override
  final dynamic categoryId;

  @override
  String toString() {
    return 'CategoryEvent.deleteCategory(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCategoryImpl &&
            const DeepCollectionEquality()
                .equals(other.categoryId, categoryId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(categoryId));

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCategoryImplCopyWith<_$DeleteCategoryImpl> get copyWith =>
      __$$DeleteCategoryImplCopyWithImpl<_$DeleteCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic categoryName) addCategory,
    required TResult Function() fetchCategory,
    required TResult Function(dynamic categoryId) deleteCategory,
    required TResult Function(dynamic categoryId, dynamic categoryName)
        updateCategory,
    required TResult Function(dynamic categoryName) searchCategory,
  }) {
    return deleteCategory(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic categoryName)? addCategory,
    TResult? Function()? fetchCategory,
    TResult? Function(dynamic categoryId)? deleteCategory,
    TResult? Function(dynamic categoryId, dynamic categoryName)? updateCategory,
    TResult? Function(dynamic categoryName)? searchCategory,
  }) {
    return deleteCategory?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic categoryName)? addCategory,
    TResult Function()? fetchCategory,
    TResult Function(dynamic categoryId)? deleteCategory,
    TResult Function(dynamic categoryId, dynamic categoryName)? updateCategory,
    TResult Function(dynamic categoryName)? searchCategory,
    required TResult orElse(),
  }) {
    if (deleteCategory != null) {
      return deleteCategory(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(FetchCategory value) fetchCategory,
    required TResult Function(DeleteCategory value) deleteCategory,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(SearchCategory value) searchCategory,
  }) {
    return deleteCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddCategory value)? addCategory,
    TResult? Function(FetchCategory value)? fetchCategory,
    TResult? Function(DeleteCategory value)? deleteCategory,
    TResult? Function(UpdateCategory value)? updateCategory,
    TResult? Function(SearchCategory value)? searchCategory,
  }) {
    return deleteCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCategory value)? addCategory,
    TResult Function(FetchCategory value)? fetchCategory,
    TResult Function(DeleteCategory value)? deleteCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(SearchCategory value)? searchCategory,
    required TResult orElse(),
  }) {
    if (deleteCategory != null) {
      return deleteCategory(this);
    }
    return orElse();
  }
}

abstract class DeleteCategory implements CategoryEvent {
  const factory DeleteCategory(final dynamic categoryId) = _$DeleteCategoryImpl;

  dynamic get categoryId;

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteCategoryImplCopyWith<_$DeleteCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCategoryImplCopyWith<$Res> {
  factory _$$UpdateCategoryImplCopyWith(_$UpdateCategoryImpl value,
          $Res Function(_$UpdateCategoryImpl) then) =
      __$$UpdateCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic categoryId, dynamic categoryName});
}

/// @nodoc
class __$$UpdateCategoryImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$UpdateCategoryImpl>
    implements _$$UpdateCategoryImplCopyWith<$Res> {
  __$$UpdateCategoryImplCopyWithImpl(
      _$UpdateCategoryImpl _value, $Res Function(_$UpdateCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? categoryName = freezed,
  }) {
    return _then(_$UpdateCategoryImpl(
      freezed == categoryId ? _value.categoryId! : categoryId,
      freezed == categoryName ? _value.categoryName! : categoryName,
    ));
  }
}

/// @nodoc

class _$UpdateCategoryImpl implements UpdateCategory {
  const _$UpdateCategoryImpl(this.categoryId, this.categoryName);

  @override
  final dynamic categoryId;
  @override
  final dynamic categoryName;

  @override
  String toString() {
    return 'CategoryEvent.updateCategory(categoryId: $categoryId, categoryName: $categoryName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCategoryImpl &&
            const DeepCollectionEquality()
                .equals(other.categoryId, categoryId) &&
            const DeepCollectionEquality()
                .equals(other.categoryName, categoryName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(categoryId),
      const DeepCollectionEquality().hash(categoryName));

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCategoryImplCopyWith<_$UpdateCategoryImpl> get copyWith =>
      __$$UpdateCategoryImplCopyWithImpl<_$UpdateCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic categoryName) addCategory,
    required TResult Function() fetchCategory,
    required TResult Function(dynamic categoryId) deleteCategory,
    required TResult Function(dynamic categoryId, dynamic categoryName)
        updateCategory,
    required TResult Function(dynamic categoryName) searchCategory,
  }) {
    return updateCategory(categoryId, categoryName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic categoryName)? addCategory,
    TResult? Function()? fetchCategory,
    TResult? Function(dynamic categoryId)? deleteCategory,
    TResult? Function(dynamic categoryId, dynamic categoryName)? updateCategory,
    TResult? Function(dynamic categoryName)? searchCategory,
  }) {
    return updateCategory?.call(categoryId, categoryName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic categoryName)? addCategory,
    TResult Function()? fetchCategory,
    TResult Function(dynamic categoryId)? deleteCategory,
    TResult Function(dynamic categoryId, dynamic categoryName)? updateCategory,
    TResult Function(dynamic categoryName)? searchCategory,
    required TResult orElse(),
  }) {
    if (updateCategory != null) {
      return updateCategory(categoryId, categoryName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(FetchCategory value) fetchCategory,
    required TResult Function(DeleteCategory value) deleteCategory,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(SearchCategory value) searchCategory,
  }) {
    return updateCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddCategory value)? addCategory,
    TResult? Function(FetchCategory value)? fetchCategory,
    TResult? Function(DeleteCategory value)? deleteCategory,
    TResult? Function(UpdateCategory value)? updateCategory,
    TResult? Function(SearchCategory value)? searchCategory,
  }) {
    return updateCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCategory value)? addCategory,
    TResult Function(FetchCategory value)? fetchCategory,
    TResult Function(DeleteCategory value)? deleteCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(SearchCategory value)? searchCategory,
    required TResult orElse(),
  }) {
    if (updateCategory != null) {
      return updateCategory(this);
    }
    return orElse();
  }
}

abstract class UpdateCategory implements CategoryEvent {
  const factory UpdateCategory(
          final dynamic categoryId, final dynamic categoryName) =
      _$UpdateCategoryImpl;

  dynamic get categoryId;
  dynamic get categoryName;

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCategoryImplCopyWith<_$UpdateCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchCategoryImplCopyWith<$Res> {
  factory _$$SearchCategoryImplCopyWith(_$SearchCategoryImpl value,
          $Res Function(_$SearchCategoryImpl) then) =
      __$$SearchCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic categoryName});
}

/// @nodoc
class __$$SearchCategoryImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$SearchCategoryImpl>
    implements _$$SearchCategoryImplCopyWith<$Res> {
  __$$SearchCategoryImplCopyWithImpl(
      _$SearchCategoryImpl _value, $Res Function(_$SearchCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = freezed,
  }) {
    return _then(_$SearchCategoryImpl(
      freezed == categoryName ? _value.categoryName! : categoryName,
    ));
  }
}

/// @nodoc

class _$SearchCategoryImpl implements SearchCategory {
  const _$SearchCategoryImpl(this.categoryName);

  @override
  final dynamic categoryName;

  @override
  String toString() {
    return 'CategoryEvent.searchCategory(categoryName: $categoryName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCategoryImpl &&
            const DeepCollectionEquality()
                .equals(other.categoryName, categoryName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(categoryName));

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCategoryImplCopyWith<_$SearchCategoryImpl> get copyWith =>
      __$$SearchCategoryImplCopyWithImpl<_$SearchCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic categoryName) addCategory,
    required TResult Function() fetchCategory,
    required TResult Function(dynamic categoryId) deleteCategory,
    required TResult Function(dynamic categoryId, dynamic categoryName)
        updateCategory,
    required TResult Function(dynamic categoryName) searchCategory,
  }) {
    return searchCategory(categoryName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic categoryName)? addCategory,
    TResult? Function()? fetchCategory,
    TResult? Function(dynamic categoryId)? deleteCategory,
    TResult? Function(dynamic categoryId, dynamic categoryName)? updateCategory,
    TResult? Function(dynamic categoryName)? searchCategory,
  }) {
    return searchCategory?.call(categoryName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic categoryName)? addCategory,
    TResult Function()? fetchCategory,
    TResult Function(dynamic categoryId)? deleteCategory,
    TResult Function(dynamic categoryId, dynamic categoryName)? updateCategory,
    TResult Function(dynamic categoryName)? searchCategory,
    required TResult orElse(),
  }) {
    if (searchCategory != null) {
      return searchCategory(categoryName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(FetchCategory value) fetchCategory,
    required TResult Function(DeleteCategory value) deleteCategory,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(SearchCategory value) searchCategory,
  }) {
    return searchCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddCategory value)? addCategory,
    TResult? Function(FetchCategory value)? fetchCategory,
    TResult? Function(DeleteCategory value)? deleteCategory,
    TResult? Function(UpdateCategory value)? updateCategory,
    TResult? Function(SearchCategory value)? searchCategory,
  }) {
    return searchCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCategory value)? addCategory,
    TResult Function(FetchCategory value)? fetchCategory,
    TResult Function(DeleteCategory value)? deleteCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(SearchCategory value)? searchCategory,
    required TResult orElse(),
  }) {
    if (searchCategory != null) {
      return searchCategory(this);
    }
    return orElse();
  }
}

abstract class SearchCategory implements CategoryEvent {
  const factory SearchCategory(final dynamic categoryName) =
      _$SearchCategoryImpl;

  dynamic get categoryName;

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchCategoryImplCopyWith<_$SearchCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryModel> category, String msg) loaded,
    required TResult Function(String msg) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryModel> category, String msg)? loaded,
    TResult? Function(String msg)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryModel> category, String msg)? loaded,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCategory value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCategory value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCategory value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialCategoryImplCopyWith<$Res> {
  factory _$$InitialCategoryImplCopyWith(_$InitialCategoryImpl value,
          $Res Function(_$InitialCategoryImpl) then) =
      __$$InitialCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCategoryImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$InitialCategoryImpl>
    implements _$$InitialCategoryImplCopyWith<$Res> {
  __$$InitialCategoryImplCopyWithImpl(
      _$InitialCategoryImpl _value, $Res Function(_$InitialCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialCategoryImpl implements InitialCategory {
  const _$InitialCategoryImpl();

  @override
  String toString() {
    return 'CategoryState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryModel> category, String msg) loaded,
    required TResult Function(String msg) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryModel> category, String msg)? loaded,
    TResult? Function(String msg)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryModel> category, String msg)? loaded,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCategory value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCategory value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCategory value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialCategory implements CategoryState {
  const factory InitialCategory() = _$InitialCategoryImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CategoryState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryModel> category, String msg) loaded,
    required TResult Function(String msg) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryModel> category, String msg)? loaded,
    TResult? Function(String msg)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryModel> category, String msg)? loaded,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCategory value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCategory value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCategory value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements CategoryState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoryModel> category, String msg});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? msg = null,
  }) {
    return _then(_$LoadedImpl(
      null == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl(final List<CategoryModel> category, this.msg)
      : _category = category;

  final List<CategoryModel> _category;
  @override
  List<CategoryModel> get category {
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  @override
  final String msg;

  @override
  String toString() {
    return 'CategoryState.loaded(category: $category, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_category), msg);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryModel> category, String msg) loaded,
    required TResult Function(String msg) error,
  }) {
    return loaded(category, msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryModel> category, String msg)? loaded,
    TResult? Function(String msg)? error,
  }) {
    return loaded?.call(category, msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryModel> category, String msg)? loaded,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(category, msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCategory value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCategory value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCategory value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements CategoryState {
  const factory Loaded(final List<CategoryModel> category, final String msg) =
      _$LoadedImpl;

  List<CategoryModel> get category;
  String get msg;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$ErrorImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'CategoryState.error(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryModel> category, String msg) loaded,
    required TResult Function(String msg) error,
  }) {
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryModel> category, String msg)? loaded,
    TResult? Function(String msg)? error,
  }) {
    return error?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryModel> category, String msg)? loaded,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCategory value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCategory value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCategory value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements CategoryState {
  const factory Error(final String msg) = _$ErrorImpl;

  String get msg;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
