// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interest_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InterestFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCategory,
    required TResult Function() sendInterest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCategory,
    TResult? Function()? sendInterest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCategory,
    TResult Function()? sendInterest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCategory value) fetchCategory,
    required TResult Function(_SendInterest value) sendInterest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCategory value)? fetchCategory,
    TResult? Function(_SendInterest value)? sendInterest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCategory value)? fetchCategory,
    TResult Function(_SendInterest value)? sendInterest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestFormEventCopyWith<$Res> {
  factory $InterestFormEventCopyWith(
          InterestFormEvent value, $Res Function(InterestFormEvent) then) =
      _$InterestFormEventCopyWithImpl<$Res, InterestFormEvent>;
}

/// @nodoc
class _$InterestFormEventCopyWithImpl<$Res, $Val extends InterestFormEvent>
    implements $InterestFormEventCopyWith<$Res> {
  _$InterestFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchCategoryCopyWith<$Res> {
  factory _$$_FetchCategoryCopyWith(
          _$_FetchCategory value, $Res Function(_$_FetchCategory) then) =
      __$$_FetchCategoryCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchCategoryCopyWithImpl<$Res>
    extends _$InterestFormEventCopyWithImpl<$Res, _$_FetchCategory>
    implements _$$_FetchCategoryCopyWith<$Res> {
  __$$_FetchCategoryCopyWithImpl(
      _$_FetchCategory _value, $Res Function(_$_FetchCategory) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchCategory implements _FetchCategory {
  const _$_FetchCategory();

  @override
  String toString() {
    return 'InterestFormEvent.fetchCategory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchCategory);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCategory,
    required TResult Function() sendInterest,
  }) {
    return fetchCategory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCategory,
    TResult? Function()? sendInterest,
  }) {
    return fetchCategory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCategory,
    TResult Function()? sendInterest,
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
    required TResult Function(_FetchCategory value) fetchCategory,
    required TResult Function(_SendInterest value) sendInterest,
  }) {
    return fetchCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCategory value)? fetchCategory,
    TResult? Function(_SendInterest value)? sendInterest,
  }) {
    return fetchCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCategory value)? fetchCategory,
    TResult Function(_SendInterest value)? sendInterest,
    required TResult orElse(),
  }) {
    if (fetchCategory != null) {
      return fetchCategory(this);
    }
    return orElse();
  }
}

abstract class _FetchCategory implements InterestFormEvent {
  const factory _FetchCategory() = _$_FetchCategory;
}

/// @nodoc
abstract class _$$_SendInterestCopyWith<$Res> {
  factory _$$_SendInterestCopyWith(
          _$_SendInterest value, $Res Function(_$_SendInterest) then) =
      __$$_SendInterestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SendInterestCopyWithImpl<$Res>
    extends _$InterestFormEventCopyWithImpl<$Res, _$_SendInterest>
    implements _$$_SendInterestCopyWith<$Res> {
  __$$_SendInterestCopyWithImpl(
      _$_SendInterest _value, $Res Function(_$_SendInterest) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SendInterest implements _SendInterest {
  const _$_SendInterest();

  @override
  String toString() {
    return 'InterestFormEvent.sendInterest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SendInterest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCategory,
    required TResult Function() sendInterest,
  }) {
    return sendInterest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCategory,
    TResult? Function()? sendInterest,
  }) {
    return sendInterest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCategory,
    TResult Function()? sendInterest,
    required TResult orElse(),
  }) {
    if (sendInterest != null) {
      return sendInterest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCategory value) fetchCategory,
    required TResult Function(_SendInterest value) sendInterest,
  }) {
    return sendInterest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCategory value)? fetchCategory,
    TResult? Function(_SendInterest value)? sendInterest,
  }) {
    return sendInterest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCategory value)? fetchCategory,
    TResult Function(_SendInterest value)? sendInterest,
    required TResult orElse(),
  }) {
    if (sendInterest != null) {
      return sendInterest(this);
    }
    return orElse();
  }
}

abstract class _SendInterest implements InterestFormEvent {
  const factory _SendInterest() = _$_SendInterest;
}

/// @nodoc
mixin _$InterestFormState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<Category> get categories => throw _privateConstructorUsedError;
  List<Interest> get selectedCategory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InterestFormStateCopyWith<InterestFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestFormStateCopyWith<$Res> {
  factory $InterestFormStateCopyWith(
          InterestFormState value, $Res Function(InterestFormState) then) =
      _$InterestFormStateCopyWithImpl<$Res, InterestFormState>;
  @useResult
  $Res call(
      {RequestState state,
      String message,
      List<Category> categories,
      List<Interest> selectedCategory});
}

/// @nodoc
class _$InterestFormStateCopyWithImpl<$Res, $Val extends InterestFormState>
    implements $InterestFormStateCopyWith<$Res> {
  _$InterestFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? categories = null,
    Object? selectedCategory = null,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as List<Interest>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InterestFormStateCopyWith<$Res>
    implements $InterestFormStateCopyWith<$Res> {
  factory _$$_InterestFormStateCopyWith(_$_InterestFormState value,
          $Res Function(_$_InterestFormState) then) =
      __$$_InterestFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState state,
      String message,
      List<Category> categories,
      List<Interest> selectedCategory});
}

/// @nodoc
class __$$_InterestFormStateCopyWithImpl<$Res>
    extends _$InterestFormStateCopyWithImpl<$Res, _$_InterestFormState>
    implements _$$_InterestFormStateCopyWith<$Res> {
  __$$_InterestFormStateCopyWithImpl(
      _$_InterestFormState _value, $Res Function(_$_InterestFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? categories = null,
    Object? selectedCategory = null,
  }) {
    return _then(_$_InterestFormState(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      selectedCategory: null == selectedCategory
          ? _value._selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as List<Interest>,
    ));
  }
}

/// @nodoc

class _$_InterestFormState implements _InterestFormState {
  const _$_InterestFormState(
      {required this.state,
      required this.message,
      required final List<Category> categories,
      required final List<Interest> selectedCategory})
      : _categories = categories,
        _selectedCategory = selectedCategory;

  @override
  final RequestState state;
  @override
  final String message;
  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<Interest> _selectedCategory;
  @override
  List<Interest> get selectedCategory {
    if (_selectedCategory is EqualUnmodifiableListView)
      return _selectedCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedCategory);
  }

  @override
  String toString() {
    return 'InterestFormState(state: $state, message: $message, categories: $categories, selectedCategory: $selectedCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InterestFormState &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._selectedCategory, _selectedCategory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      state,
      message,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_selectedCategory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InterestFormStateCopyWith<_$_InterestFormState> get copyWith =>
      __$$_InterestFormStateCopyWithImpl<_$_InterestFormState>(
          this, _$identity);
}

abstract class _InterestFormState implements InterestFormState {
  const factory _InterestFormState(
      {required final RequestState state,
      required final String message,
      required final List<Category> categories,
      required final List<Interest> selectedCategory}) = _$_InterestFormState;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  List<Category> get categories;
  @override
  List<Interest> get selectedCategory;
  @override
  @JsonKey(ignore: true)
  _$$_InterestFormStateCopyWith<_$_InterestFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
