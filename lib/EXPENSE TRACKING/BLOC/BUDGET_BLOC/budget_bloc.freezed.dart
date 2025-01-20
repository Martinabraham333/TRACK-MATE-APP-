// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'budget_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BudgetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            dynamic Budget, dynamic category, dynamic category_id)
        addBudget,
    required TResult Function() fetchBudget,
    required TResult Function(
            dynamic Budget, dynamic Budget_Id, dynamic category_id)
        updateBudget,
    required TResult Function(dynamic Budget_Id) deleteBudget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic Budget, dynamic category, dynamic category_id)?
        addBudget,
    TResult? Function()? fetchBudget,
    TResult? Function(dynamic Budget, dynamic Budget_Id, dynamic category_id)?
        updateBudget,
    TResult? Function(dynamic Budget_Id)? deleteBudget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic Budget, dynamic category, dynamic category_id)?
        addBudget,
    TResult Function()? fetchBudget,
    TResult Function(dynamic Budget, dynamic Budget_Id, dynamic category_id)?
        updateBudget,
    TResult Function(dynamic Budget_Id)? deleteBudget,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddBudget value) addBudget,
    required TResult Function(FetchBudget value) fetchBudget,
    required TResult Function(UpdateBudget value) updateBudget,
    required TResult Function(DeleteBudget value) deleteBudget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddBudget value)? addBudget,
    TResult? Function(FetchBudget value)? fetchBudget,
    TResult? Function(UpdateBudget value)? updateBudget,
    TResult? Function(DeleteBudget value)? deleteBudget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddBudget value)? addBudget,
    TResult Function(FetchBudget value)? fetchBudget,
    TResult Function(UpdateBudget value)? updateBudget,
    TResult Function(DeleteBudget value)? deleteBudget,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetEventCopyWith<$Res> {
  factory $BudgetEventCopyWith(
          BudgetEvent value, $Res Function(BudgetEvent) then) =
      _$BudgetEventCopyWithImpl<$Res, BudgetEvent>;
}

/// @nodoc
class _$BudgetEventCopyWithImpl<$Res, $Val extends BudgetEvent>
    implements $BudgetEventCopyWith<$Res> {
  _$BudgetEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BudgetEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddBudgetImplCopyWith<$Res> {
  factory _$$AddBudgetImplCopyWith(
          _$AddBudgetImpl value, $Res Function(_$AddBudgetImpl) then) =
      __$$AddBudgetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic Budget, dynamic category, dynamic category_id});
}

/// @nodoc
class __$$AddBudgetImplCopyWithImpl<$Res>
    extends _$BudgetEventCopyWithImpl<$Res, _$AddBudgetImpl>
    implements _$$AddBudgetImplCopyWith<$Res> {
  __$$AddBudgetImplCopyWithImpl(
      _$AddBudgetImpl _value, $Res Function(_$AddBudgetImpl) _then)
      : super(_value, _then);

  /// Create a copy of BudgetEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Budget = freezed,
    Object? category = freezed,
    Object? category_id = freezed,
  }) {
    return _then(_$AddBudgetImpl(
      freezed == Budget ? _value.Budget! : Budget,
      freezed == category ? _value.category! : category,
      freezed == category_id ? _value.category_id! : category_id,
    ));
  }
}

/// @nodoc

class _$AddBudgetImpl implements AddBudget {
  const _$AddBudgetImpl(this.Budget, this.category, this.category_id);

  @override
  final dynamic Budget;
  @override
  final dynamic category;
  @override
  final dynamic category_id;

  @override
  String toString() {
    return 'BudgetEvent.addBudget(Budget: $Budget, category: $category, category_id: $category_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddBudgetImpl &&
            const DeepCollectionEquality().equals(other.Budget, Budget) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality()
                .equals(other.category_id, category_id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(Budget),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(category_id));

  /// Create a copy of BudgetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddBudgetImplCopyWith<_$AddBudgetImpl> get copyWith =>
      __$$AddBudgetImplCopyWithImpl<_$AddBudgetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            dynamic Budget, dynamic category, dynamic category_id)
        addBudget,
    required TResult Function() fetchBudget,
    required TResult Function(
            dynamic Budget, dynamic Budget_Id, dynamic category_id)
        updateBudget,
    required TResult Function(dynamic Budget_Id) deleteBudget,
  }) {
    return addBudget(Budget, category, category_id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic Budget, dynamic category, dynamic category_id)?
        addBudget,
    TResult? Function()? fetchBudget,
    TResult? Function(dynamic Budget, dynamic Budget_Id, dynamic category_id)?
        updateBudget,
    TResult? Function(dynamic Budget_Id)? deleteBudget,
  }) {
    return addBudget?.call(Budget, category, category_id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic Budget, dynamic category, dynamic category_id)?
        addBudget,
    TResult Function()? fetchBudget,
    TResult Function(dynamic Budget, dynamic Budget_Id, dynamic category_id)?
        updateBudget,
    TResult Function(dynamic Budget_Id)? deleteBudget,
    required TResult orElse(),
  }) {
    if (addBudget != null) {
      return addBudget(Budget, category, category_id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddBudget value) addBudget,
    required TResult Function(FetchBudget value) fetchBudget,
    required TResult Function(UpdateBudget value) updateBudget,
    required TResult Function(DeleteBudget value) deleteBudget,
  }) {
    return addBudget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddBudget value)? addBudget,
    TResult? Function(FetchBudget value)? fetchBudget,
    TResult? Function(UpdateBudget value)? updateBudget,
    TResult? Function(DeleteBudget value)? deleteBudget,
  }) {
    return addBudget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddBudget value)? addBudget,
    TResult Function(FetchBudget value)? fetchBudget,
    TResult Function(UpdateBudget value)? updateBudget,
    TResult Function(DeleteBudget value)? deleteBudget,
    required TResult orElse(),
  }) {
    if (addBudget != null) {
      return addBudget(this);
    }
    return orElse();
  }
}

abstract class AddBudget implements BudgetEvent {
  const factory AddBudget(final dynamic Budget, final dynamic category,
      final dynamic category_id) = _$AddBudgetImpl;

  dynamic get Budget;
  dynamic get category;
  dynamic get category_id;

  /// Create a copy of BudgetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddBudgetImplCopyWith<_$AddBudgetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchBudgetImplCopyWith<$Res> {
  factory _$$FetchBudgetImplCopyWith(
          _$FetchBudgetImpl value, $Res Function(_$FetchBudgetImpl) then) =
      __$$FetchBudgetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchBudgetImplCopyWithImpl<$Res>
    extends _$BudgetEventCopyWithImpl<$Res, _$FetchBudgetImpl>
    implements _$$FetchBudgetImplCopyWith<$Res> {
  __$$FetchBudgetImplCopyWithImpl(
      _$FetchBudgetImpl _value, $Res Function(_$FetchBudgetImpl) _then)
      : super(_value, _then);

  /// Create a copy of BudgetEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchBudgetImpl implements FetchBudget {
  const _$FetchBudgetImpl();

  @override
  String toString() {
    return 'BudgetEvent.fetchBudget()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchBudgetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            dynamic Budget, dynamic category, dynamic category_id)
        addBudget,
    required TResult Function() fetchBudget,
    required TResult Function(
            dynamic Budget, dynamic Budget_Id, dynamic category_id)
        updateBudget,
    required TResult Function(dynamic Budget_Id) deleteBudget,
  }) {
    return fetchBudget();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic Budget, dynamic category, dynamic category_id)?
        addBudget,
    TResult? Function()? fetchBudget,
    TResult? Function(dynamic Budget, dynamic Budget_Id, dynamic category_id)?
        updateBudget,
    TResult? Function(dynamic Budget_Id)? deleteBudget,
  }) {
    return fetchBudget?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic Budget, dynamic category, dynamic category_id)?
        addBudget,
    TResult Function()? fetchBudget,
    TResult Function(dynamic Budget, dynamic Budget_Id, dynamic category_id)?
        updateBudget,
    TResult Function(dynamic Budget_Id)? deleteBudget,
    required TResult orElse(),
  }) {
    if (fetchBudget != null) {
      return fetchBudget();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddBudget value) addBudget,
    required TResult Function(FetchBudget value) fetchBudget,
    required TResult Function(UpdateBudget value) updateBudget,
    required TResult Function(DeleteBudget value) deleteBudget,
  }) {
    return fetchBudget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddBudget value)? addBudget,
    TResult? Function(FetchBudget value)? fetchBudget,
    TResult? Function(UpdateBudget value)? updateBudget,
    TResult? Function(DeleteBudget value)? deleteBudget,
  }) {
    return fetchBudget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddBudget value)? addBudget,
    TResult Function(FetchBudget value)? fetchBudget,
    TResult Function(UpdateBudget value)? updateBudget,
    TResult Function(DeleteBudget value)? deleteBudget,
    required TResult orElse(),
  }) {
    if (fetchBudget != null) {
      return fetchBudget(this);
    }
    return orElse();
  }
}

abstract class FetchBudget implements BudgetEvent {
  const factory FetchBudget() = _$FetchBudgetImpl;
}

/// @nodoc
abstract class _$$UpdateBudgetImplCopyWith<$Res> {
  factory _$$UpdateBudgetImplCopyWith(
          _$UpdateBudgetImpl value, $Res Function(_$UpdateBudgetImpl) then) =
      __$$UpdateBudgetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic Budget, dynamic Budget_Id, dynamic category_id});
}

/// @nodoc
class __$$UpdateBudgetImplCopyWithImpl<$Res>
    extends _$BudgetEventCopyWithImpl<$Res, _$UpdateBudgetImpl>
    implements _$$UpdateBudgetImplCopyWith<$Res> {
  __$$UpdateBudgetImplCopyWithImpl(
      _$UpdateBudgetImpl _value, $Res Function(_$UpdateBudgetImpl) _then)
      : super(_value, _then);

  /// Create a copy of BudgetEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Budget = freezed,
    Object? Budget_Id = freezed,
    Object? category_id = freezed,
  }) {
    return _then(_$UpdateBudgetImpl(
      freezed == Budget ? _value.Budget! : Budget,
      freezed == Budget_Id ? _value.Budget_Id! : Budget_Id,
      freezed == category_id ? _value.category_id! : category_id,
    ));
  }
}

/// @nodoc

class _$UpdateBudgetImpl implements UpdateBudget {
  const _$UpdateBudgetImpl(this.Budget, this.Budget_Id, this.category_id);

  @override
  final dynamic Budget;
  @override
  final dynamic Budget_Id;
  @override
  final dynamic category_id;

  @override
  String toString() {
    return 'BudgetEvent.updateBudget(Budget: $Budget, Budget_Id: $Budget_Id, category_id: $category_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateBudgetImpl &&
            const DeepCollectionEquality().equals(other.Budget, Budget) &&
            const DeepCollectionEquality().equals(other.Budget_Id, Budget_Id) &&
            const DeepCollectionEquality()
                .equals(other.category_id, category_id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(Budget),
      const DeepCollectionEquality().hash(Budget_Id),
      const DeepCollectionEquality().hash(category_id));

  /// Create a copy of BudgetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateBudgetImplCopyWith<_$UpdateBudgetImpl> get copyWith =>
      __$$UpdateBudgetImplCopyWithImpl<_$UpdateBudgetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            dynamic Budget, dynamic category, dynamic category_id)
        addBudget,
    required TResult Function() fetchBudget,
    required TResult Function(
            dynamic Budget, dynamic Budget_Id, dynamic category_id)
        updateBudget,
    required TResult Function(dynamic Budget_Id) deleteBudget,
  }) {
    return updateBudget(Budget, Budget_Id, category_id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic Budget, dynamic category, dynamic category_id)?
        addBudget,
    TResult? Function()? fetchBudget,
    TResult? Function(dynamic Budget, dynamic Budget_Id, dynamic category_id)?
        updateBudget,
    TResult? Function(dynamic Budget_Id)? deleteBudget,
  }) {
    return updateBudget?.call(Budget, Budget_Id, category_id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic Budget, dynamic category, dynamic category_id)?
        addBudget,
    TResult Function()? fetchBudget,
    TResult Function(dynamic Budget, dynamic Budget_Id, dynamic category_id)?
        updateBudget,
    TResult Function(dynamic Budget_Id)? deleteBudget,
    required TResult orElse(),
  }) {
    if (updateBudget != null) {
      return updateBudget(Budget, Budget_Id, category_id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddBudget value) addBudget,
    required TResult Function(FetchBudget value) fetchBudget,
    required TResult Function(UpdateBudget value) updateBudget,
    required TResult Function(DeleteBudget value) deleteBudget,
  }) {
    return updateBudget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddBudget value)? addBudget,
    TResult? Function(FetchBudget value)? fetchBudget,
    TResult? Function(UpdateBudget value)? updateBudget,
    TResult? Function(DeleteBudget value)? deleteBudget,
  }) {
    return updateBudget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddBudget value)? addBudget,
    TResult Function(FetchBudget value)? fetchBudget,
    TResult Function(UpdateBudget value)? updateBudget,
    TResult Function(DeleteBudget value)? deleteBudget,
    required TResult orElse(),
  }) {
    if (updateBudget != null) {
      return updateBudget(this);
    }
    return orElse();
  }
}

abstract class UpdateBudget implements BudgetEvent {
  const factory UpdateBudget(final dynamic Budget, final dynamic Budget_Id,
      final dynamic category_id) = _$UpdateBudgetImpl;

  dynamic get Budget;
  dynamic get Budget_Id;
  dynamic get category_id;

  /// Create a copy of BudgetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateBudgetImplCopyWith<_$UpdateBudgetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteBudgetImplCopyWith<$Res> {
  factory _$$DeleteBudgetImplCopyWith(
          _$DeleteBudgetImpl value, $Res Function(_$DeleteBudgetImpl) then) =
      __$$DeleteBudgetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic Budget_Id});
}

/// @nodoc
class __$$DeleteBudgetImplCopyWithImpl<$Res>
    extends _$BudgetEventCopyWithImpl<$Res, _$DeleteBudgetImpl>
    implements _$$DeleteBudgetImplCopyWith<$Res> {
  __$$DeleteBudgetImplCopyWithImpl(
      _$DeleteBudgetImpl _value, $Res Function(_$DeleteBudgetImpl) _then)
      : super(_value, _then);

  /// Create a copy of BudgetEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Budget_Id = freezed,
  }) {
    return _then(_$DeleteBudgetImpl(
      freezed == Budget_Id ? _value.Budget_Id! : Budget_Id,
    ));
  }
}

/// @nodoc

class _$DeleteBudgetImpl implements DeleteBudget {
  const _$DeleteBudgetImpl(this.Budget_Id);

  @override
  final dynamic Budget_Id;

  @override
  String toString() {
    return 'BudgetEvent.deleteBudget(Budget_Id: $Budget_Id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBudgetImpl &&
            const DeepCollectionEquality().equals(other.Budget_Id, Budget_Id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(Budget_Id));

  /// Create a copy of BudgetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBudgetImplCopyWith<_$DeleteBudgetImpl> get copyWith =>
      __$$DeleteBudgetImplCopyWithImpl<_$DeleteBudgetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            dynamic Budget, dynamic category, dynamic category_id)
        addBudget,
    required TResult Function() fetchBudget,
    required TResult Function(
            dynamic Budget, dynamic Budget_Id, dynamic category_id)
        updateBudget,
    required TResult Function(dynamic Budget_Id) deleteBudget,
  }) {
    return deleteBudget(Budget_Id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic Budget, dynamic category, dynamic category_id)?
        addBudget,
    TResult? Function()? fetchBudget,
    TResult? Function(dynamic Budget, dynamic Budget_Id, dynamic category_id)?
        updateBudget,
    TResult? Function(dynamic Budget_Id)? deleteBudget,
  }) {
    return deleteBudget?.call(Budget_Id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic Budget, dynamic category, dynamic category_id)?
        addBudget,
    TResult Function()? fetchBudget,
    TResult Function(dynamic Budget, dynamic Budget_Id, dynamic category_id)?
        updateBudget,
    TResult Function(dynamic Budget_Id)? deleteBudget,
    required TResult orElse(),
  }) {
    if (deleteBudget != null) {
      return deleteBudget(Budget_Id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddBudget value) addBudget,
    required TResult Function(FetchBudget value) fetchBudget,
    required TResult Function(UpdateBudget value) updateBudget,
    required TResult Function(DeleteBudget value) deleteBudget,
  }) {
    return deleteBudget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddBudget value)? addBudget,
    TResult? Function(FetchBudget value)? fetchBudget,
    TResult? Function(UpdateBudget value)? updateBudget,
    TResult? Function(DeleteBudget value)? deleteBudget,
  }) {
    return deleteBudget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddBudget value)? addBudget,
    TResult Function(FetchBudget value)? fetchBudget,
    TResult Function(UpdateBudget value)? updateBudget,
    TResult Function(DeleteBudget value)? deleteBudget,
    required TResult orElse(),
  }) {
    if (deleteBudget != null) {
      return deleteBudget(this);
    }
    return orElse();
  }
}

abstract class DeleteBudget implements BudgetEvent {
  const factory DeleteBudget(final dynamic Budget_Id) = _$DeleteBudgetImpl;

  dynamic get Budget_Id;

  /// Create a copy of BudgetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteBudgetImplCopyWith<_$DeleteBudgetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BudgetState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            dynamic msg, List<BudgetModel> BudgetList, dynamic monthlyExpense)
        loaded,
    required TResult Function() loading,
    required TResult Function(dynamic msg) error,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            dynamic msg, List<BudgetModel> BudgetList, dynamic monthlyExpense)?
        loaded,
    TResult? Function()? loading,
    TResult? Function(dynamic msg)? error,
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            dynamic msg, List<BudgetModel> BudgetList, dynamic monthlyExpense)?
        loaded,
    TResult Function()? loading,
    TResult Function(dynamic msg)? error,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BudgetLoaded value) loaded,
    required TResult Function(BudgetLoading value) loading,
    required TResult Function(BudgetError value) error,
    required TResult Function(InitialBudget value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BudgetLoaded value)? loaded,
    TResult? Function(BudgetLoading value)? loading,
    TResult? Function(BudgetError value)? error,
    TResult? Function(InitialBudget value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BudgetLoaded value)? loaded,
    TResult Function(BudgetLoading value)? loading,
    TResult Function(BudgetError value)? error,
    TResult Function(InitialBudget value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetStateCopyWith<$Res> {
  factory $BudgetStateCopyWith(
          BudgetState value, $Res Function(BudgetState) then) =
      _$BudgetStateCopyWithImpl<$Res, BudgetState>;
}

/// @nodoc
class _$BudgetStateCopyWithImpl<$Res, $Val extends BudgetState>
    implements $BudgetStateCopyWith<$Res> {
  _$BudgetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BudgetState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BudgetLoadedImplCopyWith<$Res> {
  factory _$$BudgetLoadedImplCopyWith(
          _$BudgetLoadedImpl value, $Res Function(_$BudgetLoadedImpl) then) =
      __$$BudgetLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {dynamic msg, List<BudgetModel> BudgetList, dynamic monthlyExpense});
}

/// @nodoc
class __$$BudgetLoadedImplCopyWithImpl<$Res>
    extends _$BudgetStateCopyWithImpl<$Res, _$BudgetLoadedImpl>
    implements _$$BudgetLoadedImplCopyWith<$Res> {
  __$$BudgetLoadedImplCopyWithImpl(
      _$BudgetLoadedImpl _value, $Res Function(_$BudgetLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BudgetState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
    Object? BudgetList = null,
    Object? monthlyExpense = freezed,
  }) {
    return _then(_$BudgetLoadedImpl(
      freezed == msg ? _value.msg! : msg,
      null == BudgetList
          ? _value._BudgetList
          : BudgetList // ignore: cast_nullable_to_non_nullable
              as List<BudgetModel>,
      freezed == monthlyExpense ? _value.monthlyExpense! : monthlyExpense,
    ));
  }
}

/// @nodoc

class _$BudgetLoadedImpl implements BudgetLoaded {
  const _$BudgetLoadedImpl(
      this.msg, final List<BudgetModel> BudgetList, this.monthlyExpense)
      : _BudgetList = BudgetList;

  @override
  final dynamic msg;
  final List<BudgetModel> _BudgetList;
  @override
  List<BudgetModel> get BudgetList {
    if (_BudgetList is EqualUnmodifiableListView) return _BudgetList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_BudgetList);
  }

  @override
  final dynamic monthlyExpense;

  @override
  String toString() {
    return 'BudgetState.loaded(msg: $msg, BudgetList: $BudgetList, monthlyExpense: $monthlyExpense)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BudgetLoadedImpl &&
            const DeepCollectionEquality().equals(other.msg, msg) &&
            const DeepCollectionEquality()
                .equals(other._BudgetList, _BudgetList) &&
            const DeepCollectionEquality()
                .equals(other.monthlyExpense, monthlyExpense));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(msg),
      const DeepCollectionEquality().hash(_BudgetList),
      const DeepCollectionEquality().hash(monthlyExpense));

  /// Create a copy of BudgetState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BudgetLoadedImplCopyWith<_$BudgetLoadedImpl> get copyWith =>
      __$$BudgetLoadedImplCopyWithImpl<_$BudgetLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            dynamic msg, List<BudgetModel> BudgetList, dynamic monthlyExpense)
        loaded,
    required TResult Function() loading,
    required TResult Function(dynamic msg) error,
    required TResult Function() initial,
  }) {
    return loaded(msg, BudgetList, monthlyExpense);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            dynamic msg, List<BudgetModel> BudgetList, dynamic monthlyExpense)?
        loaded,
    TResult? Function()? loading,
    TResult? Function(dynamic msg)? error,
    TResult? Function()? initial,
  }) {
    return loaded?.call(msg, BudgetList, monthlyExpense);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            dynamic msg, List<BudgetModel> BudgetList, dynamic monthlyExpense)?
        loaded,
    TResult Function()? loading,
    TResult Function(dynamic msg)? error,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(msg, BudgetList, monthlyExpense);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BudgetLoaded value) loaded,
    required TResult Function(BudgetLoading value) loading,
    required TResult Function(BudgetError value) error,
    required TResult Function(InitialBudget value) initial,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BudgetLoaded value)? loaded,
    TResult? Function(BudgetLoading value)? loading,
    TResult? Function(BudgetError value)? error,
    TResult? Function(InitialBudget value)? initial,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BudgetLoaded value)? loaded,
    TResult Function(BudgetLoading value)? loading,
    TResult Function(BudgetError value)? error,
    TResult Function(InitialBudget value)? initial,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BudgetLoaded implements BudgetState {
  const factory BudgetLoaded(
      final dynamic msg,
      final List<BudgetModel> BudgetList,
      final dynamic monthlyExpense) = _$BudgetLoadedImpl;

  dynamic get msg;
  List<BudgetModel> get BudgetList;
  dynamic get monthlyExpense;

  /// Create a copy of BudgetState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BudgetLoadedImplCopyWith<_$BudgetLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BudgetLoadingImplCopyWith<$Res> {
  factory _$$BudgetLoadingImplCopyWith(
          _$BudgetLoadingImpl value, $Res Function(_$BudgetLoadingImpl) then) =
      __$$BudgetLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BudgetLoadingImplCopyWithImpl<$Res>
    extends _$BudgetStateCopyWithImpl<$Res, _$BudgetLoadingImpl>
    implements _$$BudgetLoadingImplCopyWith<$Res> {
  __$$BudgetLoadingImplCopyWithImpl(
      _$BudgetLoadingImpl _value, $Res Function(_$BudgetLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of BudgetState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BudgetLoadingImpl implements BudgetLoading {
  const _$BudgetLoadingImpl();

  @override
  String toString() {
    return 'BudgetState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BudgetLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            dynamic msg, List<BudgetModel> BudgetList, dynamic monthlyExpense)
        loaded,
    required TResult Function() loading,
    required TResult Function(dynamic msg) error,
    required TResult Function() initial,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            dynamic msg, List<BudgetModel> BudgetList, dynamic monthlyExpense)?
        loaded,
    TResult? Function()? loading,
    TResult? Function(dynamic msg)? error,
    TResult? Function()? initial,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            dynamic msg, List<BudgetModel> BudgetList, dynamic monthlyExpense)?
        loaded,
    TResult Function()? loading,
    TResult Function(dynamic msg)? error,
    TResult Function()? initial,
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
    required TResult Function(BudgetLoaded value) loaded,
    required TResult Function(BudgetLoading value) loading,
    required TResult Function(BudgetError value) error,
    required TResult Function(InitialBudget value) initial,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BudgetLoaded value)? loaded,
    TResult? Function(BudgetLoading value)? loading,
    TResult? Function(BudgetError value)? error,
    TResult? Function(InitialBudget value)? initial,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BudgetLoaded value)? loaded,
    TResult Function(BudgetLoading value)? loading,
    TResult Function(BudgetError value)? error,
    TResult Function(InitialBudget value)? initial,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BudgetLoading implements BudgetState {
  const factory BudgetLoading() = _$BudgetLoadingImpl;
}

/// @nodoc
abstract class _$$BudgetErrorImplCopyWith<$Res> {
  factory _$$BudgetErrorImplCopyWith(
          _$BudgetErrorImpl value, $Res Function(_$BudgetErrorImpl) then) =
      __$$BudgetErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic msg});
}

/// @nodoc
class __$$BudgetErrorImplCopyWithImpl<$Res>
    extends _$BudgetStateCopyWithImpl<$Res, _$BudgetErrorImpl>
    implements _$$BudgetErrorImplCopyWith<$Res> {
  __$$BudgetErrorImplCopyWithImpl(
      _$BudgetErrorImpl _value, $Res Function(_$BudgetErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of BudgetState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$BudgetErrorImpl(
      freezed == msg ? _value.msg! : msg,
    ));
  }
}

/// @nodoc

class _$BudgetErrorImpl implements BudgetError {
  const _$BudgetErrorImpl(this.msg);

  @override
  final dynamic msg;

  @override
  String toString() {
    return 'BudgetState.error(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BudgetErrorImpl &&
            const DeepCollectionEquality().equals(other.msg, msg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(msg));

  /// Create a copy of BudgetState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BudgetErrorImplCopyWith<_$BudgetErrorImpl> get copyWith =>
      __$$BudgetErrorImplCopyWithImpl<_$BudgetErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            dynamic msg, List<BudgetModel> BudgetList, dynamic monthlyExpense)
        loaded,
    required TResult Function() loading,
    required TResult Function(dynamic msg) error,
    required TResult Function() initial,
  }) {
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            dynamic msg, List<BudgetModel> BudgetList, dynamic monthlyExpense)?
        loaded,
    TResult? Function()? loading,
    TResult? Function(dynamic msg)? error,
    TResult? Function()? initial,
  }) {
    return error?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            dynamic msg, List<BudgetModel> BudgetList, dynamic monthlyExpense)?
        loaded,
    TResult Function()? loading,
    TResult Function(dynamic msg)? error,
    TResult Function()? initial,
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
    required TResult Function(BudgetLoaded value) loaded,
    required TResult Function(BudgetLoading value) loading,
    required TResult Function(BudgetError value) error,
    required TResult Function(InitialBudget value) initial,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BudgetLoaded value)? loaded,
    TResult? Function(BudgetLoading value)? loading,
    TResult? Function(BudgetError value)? error,
    TResult? Function(InitialBudget value)? initial,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BudgetLoaded value)? loaded,
    TResult Function(BudgetLoading value)? loading,
    TResult Function(BudgetError value)? error,
    TResult Function(InitialBudget value)? initial,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BudgetError implements BudgetState {
  const factory BudgetError(final dynamic msg) = _$BudgetErrorImpl;

  dynamic get msg;

  /// Create a copy of BudgetState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BudgetErrorImplCopyWith<_$BudgetErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialBudgetImplCopyWith<$Res> {
  factory _$$InitialBudgetImplCopyWith(
          _$InitialBudgetImpl value, $Res Function(_$InitialBudgetImpl) then) =
      __$$InitialBudgetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialBudgetImplCopyWithImpl<$Res>
    extends _$BudgetStateCopyWithImpl<$Res, _$InitialBudgetImpl>
    implements _$$InitialBudgetImplCopyWith<$Res> {
  __$$InitialBudgetImplCopyWithImpl(
      _$InitialBudgetImpl _value, $Res Function(_$InitialBudgetImpl) _then)
      : super(_value, _then);

  /// Create a copy of BudgetState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialBudgetImpl implements InitialBudget {
  const _$InitialBudgetImpl();

  @override
  String toString() {
    return 'BudgetState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialBudgetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            dynamic msg, List<BudgetModel> BudgetList, dynamic monthlyExpense)
        loaded,
    required TResult Function() loading,
    required TResult Function(dynamic msg) error,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            dynamic msg, List<BudgetModel> BudgetList, dynamic monthlyExpense)?
        loaded,
    TResult? Function()? loading,
    TResult? Function(dynamic msg)? error,
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            dynamic msg, List<BudgetModel> BudgetList, dynamic monthlyExpense)?
        loaded,
    TResult Function()? loading,
    TResult Function(dynamic msg)? error,
    TResult Function()? initial,
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
    required TResult Function(BudgetLoaded value) loaded,
    required TResult Function(BudgetLoading value) loading,
    required TResult Function(BudgetError value) error,
    required TResult Function(InitialBudget value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BudgetLoaded value)? loaded,
    TResult? Function(BudgetLoading value)? loading,
    TResult? Function(BudgetError value)? error,
    TResult? Function(InitialBudget value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BudgetLoaded value)? loaded,
    TResult Function(BudgetLoading value)? loading,
    TResult Function(BudgetError value)? error,
    TResult Function(InitialBudget value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialBudget implements BudgetState {
  const factory InitialBudget() = _$InitialBudgetImpl;
}
