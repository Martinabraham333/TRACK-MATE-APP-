// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExpenseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic expense, dynamic date, dynamic category,
            dynamic category_id)
        addExpense,
    required TResult Function(dynamic month, dynamic day) fetchExpense,
    required TResult Function(dynamic expense, dynamic date, dynamic expense_Id,
            dynamic category_id)
        updateExpense,
    required TResult Function(dynamic expense_Id) deleteExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic expense, dynamic date, dynamic category,
            dynamic category_id)?
        addExpense,
    TResult? Function(dynamic month, dynamic day)? fetchExpense,
    TResult? Function(dynamic expense, dynamic date, dynamic expense_Id,
            dynamic category_id)?
        updateExpense,
    TResult? Function(dynamic expense_Id)? deleteExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic expense, dynamic date, dynamic category,
            dynamic category_id)?
        addExpense,
    TResult Function(dynamic month, dynamic day)? fetchExpense,
    TResult Function(dynamic expense, dynamic date, dynamic expense_Id,
            dynamic category_id)?
        updateExpense,
    TResult Function(dynamic expense_Id)? deleteExpense,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddExpense value) addExpense,
    required TResult Function(FetchExpense value) fetchExpense,
    required TResult Function(UpdateExpense value) updateExpense,
    required TResult Function(DeleteExpense value) deleteExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddExpense value)? addExpense,
    TResult? Function(FetchExpense value)? fetchExpense,
    TResult? Function(UpdateExpense value)? updateExpense,
    TResult? Function(DeleteExpense value)? deleteExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddExpense value)? addExpense,
    TResult Function(FetchExpense value)? fetchExpense,
    TResult Function(UpdateExpense value)? updateExpense,
    TResult Function(DeleteExpense value)? deleteExpense,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseEventCopyWith<$Res> {
  factory $ExpenseEventCopyWith(
          ExpenseEvent value, $Res Function(ExpenseEvent) then) =
      _$ExpenseEventCopyWithImpl<$Res, ExpenseEvent>;
}

/// @nodoc
class _$ExpenseEventCopyWithImpl<$Res, $Val extends ExpenseEvent>
    implements $ExpenseEventCopyWith<$Res> {
  _$ExpenseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddExpenseImplCopyWith<$Res> {
  factory _$$AddExpenseImplCopyWith(
          _$AddExpenseImpl value, $Res Function(_$AddExpenseImpl) then) =
      __$$AddExpenseImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {dynamic expense, dynamic date, dynamic category, dynamic category_id});
}

/// @nodoc
class __$$AddExpenseImplCopyWithImpl<$Res>
    extends _$ExpenseEventCopyWithImpl<$Res, _$AddExpenseImpl>
    implements _$$AddExpenseImplCopyWith<$Res> {
  __$$AddExpenseImplCopyWithImpl(
      _$AddExpenseImpl _value, $Res Function(_$AddExpenseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expense = freezed,
    Object? date = freezed,
    Object? category = freezed,
    Object? category_id = freezed,
  }) {
    return _then(_$AddExpenseImpl(
      freezed == expense ? _value.expense! : expense,
      freezed == date ? _value.date! : date,
      freezed == category ? _value.category! : category,
      freezed == category_id ? _value.category_id! : category_id,
    ));
  }
}

/// @nodoc

class _$AddExpenseImpl implements AddExpense {
  const _$AddExpenseImpl(
      this.expense, this.date, this.category, this.category_id);

  @override
  final dynamic expense;
  @override
  final dynamic date;
  @override
  final dynamic category;
  @override
  final dynamic category_id;

  @override
  String toString() {
    return 'ExpenseEvent.addExpense(expense: $expense, date: $date, category: $category, category_id: $category_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddExpenseImpl &&
            const DeepCollectionEquality().equals(other.expense, expense) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality()
                .equals(other.category_id, category_id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(expense),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(category_id));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddExpenseImplCopyWith<_$AddExpenseImpl> get copyWith =>
      __$$AddExpenseImplCopyWithImpl<_$AddExpenseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic expense, dynamic date, dynamic category,
            dynamic category_id)
        addExpense,
    required TResult Function(dynamic month, dynamic day) fetchExpense,
    required TResult Function(dynamic expense, dynamic date, dynamic expense_Id,
            dynamic category_id)
        updateExpense,
    required TResult Function(dynamic expense_Id) deleteExpense,
  }) {
    return addExpense(expense, date, category, category_id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic expense, dynamic date, dynamic category,
            dynamic category_id)?
        addExpense,
    TResult? Function(dynamic month, dynamic day)? fetchExpense,
    TResult? Function(dynamic expense, dynamic date, dynamic expense_Id,
            dynamic category_id)?
        updateExpense,
    TResult? Function(dynamic expense_Id)? deleteExpense,
  }) {
    return addExpense?.call(expense, date, category, category_id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic expense, dynamic date, dynamic category,
            dynamic category_id)?
        addExpense,
    TResult Function(dynamic month, dynamic day)? fetchExpense,
    TResult Function(dynamic expense, dynamic date, dynamic expense_Id,
            dynamic category_id)?
        updateExpense,
    TResult Function(dynamic expense_Id)? deleteExpense,
    required TResult orElse(),
  }) {
    if (addExpense != null) {
      return addExpense(expense, date, category, category_id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddExpense value) addExpense,
    required TResult Function(FetchExpense value) fetchExpense,
    required TResult Function(UpdateExpense value) updateExpense,
    required TResult Function(DeleteExpense value) deleteExpense,
  }) {
    return addExpense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddExpense value)? addExpense,
    TResult? Function(FetchExpense value)? fetchExpense,
    TResult? Function(UpdateExpense value)? updateExpense,
    TResult? Function(DeleteExpense value)? deleteExpense,
  }) {
    return addExpense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddExpense value)? addExpense,
    TResult Function(FetchExpense value)? fetchExpense,
    TResult Function(UpdateExpense value)? updateExpense,
    TResult Function(DeleteExpense value)? deleteExpense,
    required TResult orElse(),
  }) {
    if (addExpense != null) {
      return addExpense(this);
    }
    return orElse();
  }
}

abstract class AddExpense implements ExpenseEvent {
  const factory AddExpense(final dynamic expense, final dynamic date,
      final dynamic category, final dynamic category_id) = _$AddExpenseImpl;

  dynamic get expense;
  dynamic get date;
  dynamic get category;
  dynamic get category_id;
  @JsonKey(ignore: true)
  _$$AddExpenseImplCopyWith<_$AddExpenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchExpenseImplCopyWith<$Res> {
  factory _$$FetchExpenseImplCopyWith(
          _$FetchExpenseImpl value, $Res Function(_$FetchExpenseImpl) then) =
      __$$FetchExpenseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic month, dynamic day});
}

/// @nodoc
class __$$FetchExpenseImplCopyWithImpl<$Res>
    extends _$ExpenseEventCopyWithImpl<$Res, _$FetchExpenseImpl>
    implements _$$FetchExpenseImplCopyWith<$Res> {
  __$$FetchExpenseImplCopyWithImpl(
      _$FetchExpenseImpl _value, $Res Function(_$FetchExpenseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = freezed,
    Object? day = freezed,
  }) {
    return _then(_$FetchExpenseImpl(
      freezed == month ? _value.month! : month,
      freezed == day ? _value.day! : day,
    ));
  }
}

/// @nodoc

class _$FetchExpenseImpl implements FetchExpense {
  const _$FetchExpenseImpl(this.month, this.day);

  @override
  final dynamic month;
  @override
  final dynamic day;

  @override
  String toString() {
    return 'ExpenseEvent.fetchExpense(month: $month, day: $day)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchExpenseImpl &&
            const DeepCollectionEquality().equals(other.month, month) &&
            const DeepCollectionEquality().equals(other.day, day));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(month),
      const DeepCollectionEquality().hash(day));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchExpenseImplCopyWith<_$FetchExpenseImpl> get copyWith =>
      __$$FetchExpenseImplCopyWithImpl<_$FetchExpenseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic expense, dynamic date, dynamic category,
            dynamic category_id)
        addExpense,
    required TResult Function(dynamic month, dynamic day) fetchExpense,
    required TResult Function(dynamic expense, dynamic date, dynamic expense_Id,
            dynamic category_id)
        updateExpense,
    required TResult Function(dynamic expense_Id) deleteExpense,
  }) {
    return fetchExpense(month, day);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic expense, dynamic date, dynamic category,
            dynamic category_id)?
        addExpense,
    TResult? Function(dynamic month, dynamic day)? fetchExpense,
    TResult? Function(dynamic expense, dynamic date, dynamic expense_Id,
            dynamic category_id)?
        updateExpense,
    TResult? Function(dynamic expense_Id)? deleteExpense,
  }) {
    return fetchExpense?.call(month, day);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic expense, dynamic date, dynamic category,
            dynamic category_id)?
        addExpense,
    TResult Function(dynamic month, dynamic day)? fetchExpense,
    TResult Function(dynamic expense, dynamic date, dynamic expense_Id,
            dynamic category_id)?
        updateExpense,
    TResult Function(dynamic expense_Id)? deleteExpense,
    required TResult orElse(),
  }) {
    if (fetchExpense != null) {
      return fetchExpense(month, day);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddExpense value) addExpense,
    required TResult Function(FetchExpense value) fetchExpense,
    required TResult Function(UpdateExpense value) updateExpense,
    required TResult Function(DeleteExpense value) deleteExpense,
  }) {
    return fetchExpense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddExpense value)? addExpense,
    TResult? Function(FetchExpense value)? fetchExpense,
    TResult? Function(UpdateExpense value)? updateExpense,
    TResult? Function(DeleteExpense value)? deleteExpense,
  }) {
    return fetchExpense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddExpense value)? addExpense,
    TResult Function(FetchExpense value)? fetchExpense,
    TResult Function(UpdateExpense value)? updateExpense,
    TResult Function(DeleteExpense value)? deleteExpense,
    required TResult orElse(),
  }) {
    if (fetchExpense != null) {
      return fetchExpense(this);
    }
    return orElse();
  }
}

abstract class FetchExpense implements ExpenseEvent {
  const factory FetchExpense(final dynamic month, final dynamic day) =
      _$FetchExpenseImpl;

  dynamic get month;
  dynamic get day;
  @JsonKey(ignore: true)
  _$$FetchExpenseImplCopyWith<_$FetchExpenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateExpenseImplCopyWith<$Res> {
  factory _$$UpdateExpenseImplCopyWith(
          _$UpdateExpenseImpl value, $Res Function(_$UpdateExpenseImpl) then) =
      __$$UpdateExpenseImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {dynamic expense, dynamic date, dynamic expense_Id, dynamic category_id});
}

/// @nodoc
class __$$UpdateExpenseImplCopyWithImpl<$Res>
    extends _$ExpenseEventCopyWithImpl<$Res, _$UpdateExpenseImpl>
    implements _$$UpdateExpenseImplCopyWith<$Res> {
  __$$UpdateExpenseImplCopyWithImpl(
      _$UpdateExpenseImpl _value, $Res Function(_$UpdateExpenseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expense = freezed,
    Object? date = freezed,
    Object? expense_Id = freezed,
    Object? category_id = freezed,
  }) {
    return _then(_$UpdateExpenseImpl(
      freezed == expense ? _value.expense! : expense,
      freezed == date ? _value.date! : date,
      freezed == expense_Id ? _value.expense_Id! : expense_Id,
      freezed == category_id ? _value.category_id! : category_id,
    ));
  }
}

/// @nodoc

class _$UpdateExpenseImpl implements UpdateExpense {
  const _$UpdateExpenseImpl(
      this.expense, this.date, this.expense_Id, this.category_id);

  @override
  final dynamic expense;
  @override
  final dynamic date;
  @override
  final dynamic expense_Id;
  @override
  final dynamic category_id;

  @override
  String toString() {
    return 'ExpenseEvent.updateExpense(expense: $expense, date: $date, expense_Id: $expense_Id, category_id: $category_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateExpenseImpl &&
            const DeepCollectionEquality().equals(other.expense, expense) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.expense_Id, expense_Id) &&
            const DeepCollectionEquality()
                .equals(other.category_id, category_id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(expense),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(expense_Id),
      const DeepCollectionEquality().hash(category_id));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateExpenseImplCopyWith<_$UpdateExpenseImpl> get copyWith =>
      __$$UpdateExpenseImplCopyWithImpl<_$UpdateExpenseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic expense, dynamic date, dynamic category,
            dynamic category_id)
        addExpense,
    required TResult Function(dynamic month, dynamic day) fetchExpense,
    required TResult Function(dynamic expense, dynamic date, dynamic expense_Id,
            dynamic category_id)
        updateExpense,
    required TResult Function(dynamic expense_Id) deleteExpense,
  }) {
    return updateExpense(expense, date, expense_Id, category_id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic expense, dynamic date, dynamic category,
            dynamic category_id)?
        addExpense,
    TResult? Function(dynamic month, dynamic day)? fetchExpense,
    TResult? Function(dynamic expense, dynamic date, dynamic expense_Id,
            dynamic category_id)?
        updateExpense,
    TResult? Function(dynamic expense_Id)? deleteExpense,
  }) {
    return updateExpense?.call(expense, date, expense_Id, category_id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic expense, dynamic date, dynamic category,
            dynamic category_id)?
        addExpense,
    TResult Function(dynamic month, dynamic day)? fetchExpense,
    TResult Function(dynamic expense, dynamic date, dynamic expense_Id,
            dynamic category_id)?
        updateExpense,
    TResult Function(dynamic expense_Id)? deleteExpense,
    required TResult orElse(),
  }) {
    if (updateExpense != null) {
      return updateExpense(expense, date, expense_Id, category_id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddExpense value) addExpense,
    required TResult Function(FetchExpense value) fetchExpense,
    required TResult Function(UpdateExpense value) updateExpense,
    required TResult Function(DeleteExpense value) deleteExpense,
  }) {
    return updateExpense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddExpense value)? addExpense,
    TResult? Function(FetchExpense value)? fetchExpense,
    TResult? Function(UpdateExpense value)? updateExpense,
    TResult? Function(DeleteExpense value)? deleteExpense,
  }) {
    return updateExpense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddExpense value)? addExpense,
    TResult Function(FetchExpense value)? fetchExpense,
    TResult Function(UpdateExpense value)? updateExpense,
    TResult Function(DeleteExpense value)? deleteExpense,
    required TResult orElse(),
  }) {
    if (updateExpense != null) {
      return updateExpense(this);
    }
    return orElse();
  }
}

abstract class UpdateExpense implements ExpenseEvent {
  const factory UpdateExpense(
      final dynamic expense,
      final dynamic date,
      final dynamic expense_Id,
      final dynamic category_id) = _$UpdateExpenseImpl;

  dynamic get expense;
  dynamic get date;
  dynamic get expense_Id;
  dynamic get category_id;
  @JsonKey(ignore: true)
  _$$UpdateExpenseImplCopyWith<_$UpdateExpenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteExpenseImplCopyWith<$Res> {
  factory _$$DeleteExpenseImplCopyWith(
          _$DeleteExpenseImpl value, $Res Function(_$DeleteExpenseImpl) then) =
      __$$DeleteExpenseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic expense_Id});
}

/// @nodoc
class __$$DeleteExpenseImplCopyWithImpl<$Res>
    extends _$ExpenseEventCopyWithImpl<$Res, _$DeleteExpenseImpl>
    implements _$$DeleteExpenseImplCopyWith<$Res> {
  __$$DeleteExpenseImplCopyWithImpl(
      _$DeleteExpenseImpl _value, $Res Function(_$DeleteExpenseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expense_Id = freezed,
  }) {
    return _then(_$DeleteExpenseImpl(
      freezed == expense_Id ? _value.expense_Id! : expense_Id,
    ));
  }
}

/// @nodoc

class _$DeleteExpenseImpl implements DeleteExpense {
  const _$DeleteExpenseImpl(this.expense_Id);

  @override
  final dynamic expense_Id;

  @override
  String toString() {
    return 'ExpenseEvent.deleteExpense(expense_Id: $expense_Id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteExpenseImpl &&
            const DeepCollectionEquality()
                .equals(other.expense_Id, expense_Id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(expense_Id));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteExpenseImplCopyWith<_$DeleteExpenseImpl> get copyWith =>
      __$$DeleteExpenseImplCopyWithImpl<_$DeleteExpenseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic expense, dynamic date, dynamic category,
            dynamic category_id)
        addExpense,
    required TResult Function(dynamic month, dynamic day) fetchExpense,
    required TResult Function(dynamic expense, dynamic date, dynamic expense_Id,
            dynamic category_id)
        updateExpense,
    required TResult Function(dynamic expense_Id) deleteExpense,
  }) {
    return deleteExpense(expense_Id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic expense, dynamic date, dynamic category,
            dynamic category_id)?
        addExpense,
    TResult? Function(dynamic month, dynamic day)? fetchExpense,
    TResult? Function(dynamic expense, dynamic date, dynamic expense_Id,
            dynamic category_id)?
        updateExpense,
    TResult? Function(dynamic expense_Id)? deleteExpense,
  }) {
    return deleteExpense?.call(expense_Id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic expense, dynamic date, dynamic category,
            dynamic category_id)?
        addExpense,
    TResult Function(dynamic month, dynamic day)? fetchExpense,
    TResult Function(dynamic expense, dynamic date, dynamic expense_Id,
            dynamic category_id)?
        updateExpense,
    TResult Function(dynamic expense_Id)? deleteExpense,
    required TResult orElse(),
  }) {
    if (deleteExpense != null) {
      return deleteExpense(expense_Id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddExpense value) addExpense,
    required TResult Function(FetchExpense value) fetchExpense,
    required TResult Function(UpdateExpense value) updateExpense,
    required TResult Function(DeleteExpense value) deleteExpense,
  }) {
    return deleteExpense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddExpense value)? addExpense,
    TResult? Function(FetchExpense value)? fetchExpense,
    TResult? Function(UpdateExpense value)? updateExpense,
    TResult? Function(DeleteExpense value)? deleteExpense,
  }) {
    return deleteExpense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddExpense value)? addExpense,
    TResult Function(FetchExpense value)? fetchExpense,
    TResult Function(UpdateExpense value)? updateExpense,
    TResult Function(DeleteExpense value)? deleteExpense,
    required TResult orElse(),
  }) {
    if (deleteExpense != null) {
      return deleteExpense(this);
    }
    return orElse();
  }
}

abstract class DeleteExpense implements ExpenseEvent {
  const factory DeleteExpense(final dynamic expense_Id) = _$DeleteExpenseImpl;

  dynamic get expense_Id;
  @JsonKey(ignore: true)
  _$$DeleteExpenseImplCopyWith<_$DeleteExpenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExpenseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic msg, List<ExpenseModel> ExpenseList,
            dynamic monthExpense, dynamic dayExpense)
        loaded,
    required TResult Function() loading,
    required TResult Function(dynamic msg) error,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic msg, List<ExpenseModel> ExpenseList,
            dynamic monthExpense, dynamic dayExpense)?
        loaded,
    TResult? Function()? loading,
    TResult? Function(dynamic msg)? error,
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic msg, List<ExpenseModel> ExpenseList,
            dynamic monthExpense, dynamic dayExpense)?
        loaded,
    TResult Function()? loading,
    TResult Function(dynamic msg)? error,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseLoaded value) loaded,
    required TResult Function(ExpenseLoading value) loading,
    required TResult Function(ExpenseError value) error,
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExpenseLoaded value)? loaded,
    TResult? Function(ExpenseLoading value)? loading,
    TResult? Function(ExpenseError value)? error,
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseLoaded value)? loaded,
    TResult Function(ExpenseLoading value)? loading,
    TResult Function(ExpenseError value)? error,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseStateCopyWith<$Res> {
  factory $ExpenseStateCopyWith(
          ExpenseState value, $Res Function(ExpenseState) then) =
      _$ExpenseStateCopyWithImpl<$Res, ExpenseState>;
}

/// @nodoc
class _$ExpenseStateCopyWithImpl<$Res, $Val extends ExpenseState>
    implements $ExpenseStateCopyWith<$Res> {
  _$ExpenseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ExpenseLoadedImplCopyWith<$Res> {
  factory _$$ExpenseLoadedImplCopyWith(
          _$ExpenseLoadedImpl value, $Res Function(_$ExpenseLoadedImpl) then) =
      __$$ExpenseLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {dynamic msg,
      List<ExpenseModel> ExpenseList,
      dynamic monthExpense,
      dynamic dayExpense});
}

/// @nodoc
class __$$ExpenseLoadedImplCopyWithImpl<$Res>
    extends _$ExpenseStateCopyWithImpl<$Res, _$ExpenseLoadedImpl>
    implements _$$ExpenseLoadedImplCopyWith<$Res> {
  __$$ExpenseLoadedImplCopyWithImpl(
      _$ExpenseLoadedImpl _value, $Res Function(_$ExpenseLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
    Object? ExpenseList = null,
    Object? monthExpense = freezed,
    Object? dayExpense = freezed,
  }) {
    return _then(_$ExpenseLoadedImpl(
      freezed == msg ? _value.msg! : msg,
      null == ExpenseList
          ? _value._ExpenseList
          : ExpenseList // ignore: cast_nullable_to_non_nullable
              as List<ExpenseModel>,
      freezed == monthExpense ? _value.monthExpense! : monthExpense,
      freezed == dayExpense ? _value.dayExpense! : dayExpense,
    ));
  }
}

/// @nodoc

class _$ExpenseLoadedImpl implements ExpenseLoaded {
  const _$ExpenseLoadedImpl(this.msg, final List<ExpenseModel> ExpenseList,
      this.monthExpense, this.dayExpense)
      : _ExpenseList = ExpenseList;

  @override
  final dynamic msg;
  final List<ExpenseModel> _ExpenseList;
  @override
  List<ExpenseModel> get ExpenseList {
    if (_ExpenseList is EqualUnmodifiableListView) return _ExpenseList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ExpenseList);
  }

  @override
  final dynamic monthExpense;
  @override
  final dynamic dayExpense;

  @override
  String toString() {
    return 'ExpenseState.loaded(msg: $msg, ExpenseList: $ExpenseList, monthExpense: $monthExpense, dayExpense: $dayExpense)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseLoadedImpl &&
            const DeepCollectionEquality().equals(other.msg, msg) &&
            const DeepCollectionEquality()
                .equals(other._ExpenseList, _ExpenseList) &&
            const DeepCollectionEquality()
                .equals(other.monthExpense, monthExpense) &&
            const DeepCollectionEquality()
                .equals(other.dayExpense, dayExpense));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(msg),
      const DeepCollectionEquality().hash(_ExpenseList),
      const DeepCollectionEquality().hash(monthExpense),
      const DeepCollectionEquality().hash(dayExpense));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseLoadedImplCopyWith<_$ExpenseLoadedImpl> get copyWith =>
      __$$ExpenseLoadedImplCopyWithImpl<_$ExpenseLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic msg, List<ExpenseModel> ExpenseList,
            dynamic monthExpense, dynamic dayExpense)
        loaded,
    required TResult Function() loading,
    required TResult Function(dynamic msg) error,
    required TResult Function() initial,
  }) {
    return loaded(msg, ExpenseList, monthExpense, dayExpense);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic msg, List<ExpenseModel> ExpenseList,
            dynamic monthExpense, dynamic dayExpense)?
        loaded,
    TResult? Function()? loading,
    TResult? Function(dynamic msg)? error,
    TResult? Function()? initial,
  }) {
    return loaded?.call(msg, ExpenseList, monthExpense, dayExpense);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic msg, List<ExpenseModel> ExpenseList,
            dynamic monthExpense, dynamic dayExpense)?
        loaded,
    TResult Function()? loading,
    TResult Function(dynamic msg)? error,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(msg, ExpenseList, monthExpense, dayExpense);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseLoaded value) loaded,
    required TResult Function(ExpenseLoading value) loading,
    required TResult Function(ExpenseError value) error,
    required TResult Function(_Initial value) initial,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExpenseLoaded value)? loaded,
    TResult? Function(ExpenseLoading value)? loading,
    TResult? Function(ExpenseError value)? error,
    TResult? Function(_Initial value)? initial,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseLoaded value)? loaded,
    TResult Function(ExpenseLoading value)? loading,
    TResult Function(ExpenseError value)? error,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ExpenseLoaded implements ExpenseState {
  const factory ExpenseLoaded(
      final dynamic msg,
      final List<ExpenseModel> ExpenseList,
      final dynamic monthExpense,
      final dynamic dayExpense) = _$ExpenseLoadedImpl;

  dynamic get msg;
  List<ExpenseModel> get ExpenseList;
  dynamic get monthExpense;
  dynamic get dayExpense;
  @JsonKey(ignore: true)
  _$$ExpenseLoadedImplCopyWith<_$ExpenseLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpenseLoadingImplCopyWith<$Res> {
  factory _$$ExpenseLoadingImplCopyWith(_$ExpenseLoadingImpl value,
          $Res Function(_$ExpenseLoadingImpl) then) =
      __$$ExpenseLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExpenseLoadingImplCopyWithImpl<$Res>
    extends _$ExpenseStateCopyWithImpl<$Res, _$ExpenseLoadingImpl>
    implements _$$ExpenseLoadingImplCopyWith<$Res> {
  __$$ExpenseLoadingImplCopyWithImpl(
      _$ExpenseLoadingImpl _value, $Res Function(_$ExpenseLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExpenseLoadingImpl implements ExpenseLoading {
  const _$ExpenseLoadingImpl();

  @override
  String toString() {
    return 'ExpenseState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExpenseLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic msg, List<ExpenseModel> ExpenseList,
            dynamic monthExpense, dynamic dayExpense)
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
    TResult? Function(dynamic msg, List<ExpenseModel> ExpenseList,
            dynamic monthExpense, dynamic dayExpense)?
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
    TResult Function(dynamic msg, List<ExpenseModel> ExpenseList,
            dynamic monthExpense, dynamic dayExpense)?
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
    required TResult Function(ExpenseLoaded value) loaded,
    required TResult Function(ExpenseLoading value) loading,
    required TResult Function(ExpenseError value) error,
    required TResult Function(_Initial value) initial,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExpenseLoaded value)? loaded,
    TResult? Function(ExpenseLoading value)? loading,
    TResult? Function(ExpenseError value)? error,
    TResult? Function(_Initial value)? initial,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseLoaded value)? loaded,
    TResult Function(ExpenseLoading value)? loading,
    TResult Function(ExpenseError value)? error,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ExpenseLoading implements ExpenseState {
  const factory ExpenseLoading() = _$ExpenseLoadingImpl;
}

/// @nodoc
abstract class _$$ExpenseErrorImplCopyWith<$Res> {
  factory _$$ExpenseErrorImplCopyWith(
          _$ExpenseErrorImpl value, $Res Function(_$ExpenseErrorImpl) then) =
      __$$ExpenseErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic msg});
}

/// @nodoc
class __$$ExpenseErrorImplCopyWithImpl<$Res>
    extends _$ExpenseStateCopyWithImpl<$Res, _$ExpenseErrorImpl>
    implements _$$ExpenseErrorImplCopyWith<$Res> {
  __$$ExpenseErrorImplCopyWithImpl(
      _$ExpenseErrorImpl _value, $Res Function(_$ExpenseErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$ExpenseErrorImpl(
      freezed == msg ? _value.msg! : msg,
    ));
  }
}

/// @nodoc

class _$ExpenseErrorImpl implements ExpenseError {
  const _$ExpenseErrorImpl(this.msg);

  @override
  final dynamic msg;

  @override
  String toString() {
    return 'ExpenseState.error(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseErrorImpl &&
            const DeepCollectionEquality().equals(other.msg, msg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(msg));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseErrorImplCopyWith<_$ExpenseErrorImpl> get copyWith =>
      __$$ExpenseErrorImplCopyWithImpl<_$ExpenseErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic msg, List<ExpenseModel> ExpenseList,
            dynamic monthExpense, dynamic dayExpense)
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
    TResult? Function(dynamic msg, List<ExpenseModel> ExpenseList,
            dynamic monthExpense, dynamic dayExpense)?
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
    TResult Function(dynamic msg, List<ExpenseModel> ExpenseList,
            dynamic monthExpense, dynamic dayExpense)?
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
    required TResult Function(ExpenseLoaded value) loaded,
    required TResult Function(ExpenseLoading value) loading,
    required TResult Function(ExpenseError value) error,
    required TResult Function(_Initial value) initial,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExpenseLoaded value)? loaded,
    TResult? Function(ExpenseLoading value)? loading,
    TResult? Function(ExpenseError value)? error,
    TResult? Function(_Initial value)? initial,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseLoaded value)? loaded,
    TResult Function(ExpenseLoading value)? loading,
    TResult Function(ExpenseError value)? error,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ExpenseError implements ExpenseState {
  const factory ExpenseError(final dynamic msg) = _$ExpenseErrorImpl;

  dynamic get msg;
  @JsonKey(ignore: true)
  _$$ExpenseErrorImplCopyWith<_$ExpenseErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ExpenseStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ExpenseState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic msg, List<ExpenseModel> ExpenseList,
            dynamic monthExpense, dynamic dayExpense)
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
    TResult? Function(dynamic msg, List<ExpenseModel> ExpenseList,
            dynamic monthExpense, dynamic dayExpense)?
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
    TResult Function(dynamic msg, List<ExpenseModel> ExpenseList,
            dynamic monthExpense, dynamic dayExpense)?
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
    required TResult Function(ExpenseLoaded value) loaded,
    required TResult Function(ExpenseLoading value) loading,
    required TResult Function(ExpenseError value) error,
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExpenseLoaded value)? loaded,
    TResult? Function(ExpenseLoading value)? loading,
    TResult? Function(ExpenseError value)? error,
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseLoaded value)? loaded,
    TResult Function(ExpenseLoading value)? loading,
    TResult Function(ExpenseError value)? error,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ExpenseState {
  const factory _Initial() = _$InitialImpl;
}
