// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_province_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchProvinceFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String query) searchOnChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String query)? searchOnChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String query)? searchOnChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SearchOnChanged value) searchOnChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SearchOnChanged value)? searchOnChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SearchOnChanged value)? searchOnChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProvinceFormEventCopyWith<$Res> {
  factory $SearchProvinceFormEventCopyWith(SearchProvinceFormEvent value,
          $Res Function(SearchProvinceFormEvent) then) =
      _$SearchProvinceFormEventCopyWithImpl<$Res, SearchProvinceFormEvent>;
}

/// @nodoc
class _$SearchProvinceFormEventCopyWithImpl<$Res,
        $Val extends SearchProvinceFormEvent>
    implements $SearchProvinceFormEventCopyWith<$Res> {
  _$SearchProvinceFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SearchProvinceFormEventCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SearchProvinceFormEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String query) searchOnChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String query)? searchOnChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String query)? searchOnChanged,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_SearchOnChanged value) searchOnChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SearchOnChanged value)? searchOnChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SearchOnChanged value)? searchOnChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchProvinceFormEvent {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_SearchOnChangedCopyWith<$Res> {
  factory _$$_SearchOnChangedCopyWith(
          _$_SearchOnChanged value, $Res Function(_$_SearchOnChanged) then) =
      __$$_SearchOnChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_SearchOnChangedCopyWithImpl<$Res>
    extends _$SearchProvinceFormEventCopyWithImpl<$Res, _$_SearchOnChanged>
    implements _$$_SearchOnChangedCopyWith<$Res> {
  __$$_SearchOnChangedCopyWithImpl(
      _$_SearchOnChanged _value, $Res Function(_$_SearchOnChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_SearchOnChanged(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchOnChanged implements _SearchOnChanged {
  const _$_SearchOnChanged(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchProvinceFormEvent.searchOnChanged(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchOnChanged &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchOnChangedCopyWith<_$_SearchOnChanged> get copyWith =>
      __$$_SearchOnChangedCopyWithImpl<_$_SearchOnChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String query) searchOnChanged,
  }) {
    return searchOnChanged(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String query)? searchOnChanged,
  }) {
    return searchOnChanged?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String query)? searchOnChanged,
    required TResult orElse(),
  }) {
    if (searchOnChanged != null) {
      return searchOnChanged(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SearchOnChanged value) searchOnChanged,
  }) {
    return searchOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SearchOnChanged value)? searchOnChanged,
  }) {
    return searchOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SearchOnChanged value)? searchOnChanged,
    required TResult orElse(),
  }) {
    if (searchOnChanged != null) {
      return searchOnChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchOnChanged implements SearchProvinceFormEvent {
  const factory _SearchOnChanged(final String query) = _$_SearchOnChanged;

  String get query;
  @JsonKey(ignore: true)
  _$$_SearchOnChangedCopyWith<_$_SearchOnChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchProvinceFormState {
  RequestState get result => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isShowErrorMessages => throw _privateConstructorUsedError;
  List<String> get searchResultList => throw _privateConstructorUsedError;
  List<String> get provinceList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchProvinceFormStateCopyWith<SearchProvinceFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProvinceFormStateCopyWith<$Res> {
  factory $SearchProvinceFormStateCopyWith(SearchProvinceFormState value,
          $Res Function(SearchProvinceFormState) then) =
      _$SearchProvinceFormStateCopyWithImpl<$Res, SearchProvinceFormState>;
  @useResult
  $Res call(
      {RequestState result,
      String query,
      bool isSubmitting,
      bool isShowErrorMessages,
      List<String> searchResultList,
      List<String> provinceList});
}

/// @nodoc
class _$SearchProvinceFormStateCopyWithImpl<$Res,
        $Val extends SearchProvinceFormState>
    implements $SearchProvinceFormStateCopyWith<$Res> {
  _$SearchProvinceFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? query = null,
    Object? isSubmitting = null,
    Object? isShowErrorMessages = null,
    Object? searchResultList = null,
    Object? provinceList = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as RequestState,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowErrorMessages: null == isShowErrorMessages
          ? _value.isShowErrorMessages
          : isShowErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      searchResultList: null == searchResultList
          ? _value.searchResultList
          : searchResultList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      provinceList: null == provinceList
          ? _value.provinceList
          : provinceList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchProvinceFormStateCopyWith<$Res>
    implements $SearchProvinceFormStateCopyWith<$Res> {
  factory _$$_SearchProvinceFormStateCopyWith(_$_SearchProvinceFormState value,
          $Res Function(_$_SearchProvinceFormState) then) =
      __$$_SearchProvinceFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState result,
      String query,
      bool isSubmitting,
      bool isShowErrorMessages,
      List<String> searchResultList,
      List<String> provinceList});
}

/// @nodoc
class __$$_SearchProvinceFormStateCopyWithImpl<$Res>
    extends _$SearchProvinceFormStateCopyWithImpl<$Res,
        _$_SearchProvinceFormState>
    implements _$$_SearchProvinceFormStateCopyWith<$Res> {
  __$$_SearchProvinceFormStateCopyWithImpl(_$_SearchProvinceFormState _value,
      $Res Function(_$_SearchProvinceFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? query = null,
    Object? isSubmitting = null,
    Object? isShowErrorMessages = null,
    Object? searchResultList = null,
    Object? provinceList = null,
  }) {
    return _then(_$_SearchProvinceFormState(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as RequestState,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowErrorMessages: null == isShowErrorMessages
          ? _value.isShowErrorMessages
          : isShowErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      searchResultList: null == searchResultList
          ? _value._searchResultList
          : searchResultList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      provinceList: null == provinceList
          ? _value._provinceList
          : provinceList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_SearchProvinceFormState implements _SearchProvinceFormState {
  const _$_SearchProvinceFormState(
      {required this.result,
      required this.query,
      required this.isSubmitting,
      required this.isShowErrorMessages,
      required final List<String> searchResultList,
      required final List<String> provinceList})
      : _searchResultList = searchResultList,
        _provinceList = provinceList;

  @override
  final RequestState result;
  @override
  final String query;
  @override
  final bool isSubmitting;
  @override
  final bool isShowErrorMessages;
  final List<String> _searchResultList;
  @override
  List<String> get searchResultList {
    if (_searchResultList is EqualUnmodifiableListView)
      return _searchResultList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResultList);
  }

  final List<String> _provinceList;
  @override
  List<String> get provinceList {
    if (_provinceList is EqualUnmodifiableListView) return _provinceList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_provinceList);
  }

  @override
  String toString() {
    return 'SearchProvinceFormState(result: $result, query: $query, isSubmitting: $isSubmitting, isShowErrorMessages: $isShowErrorMessages, searchResultList: $searchResultList, provinceList: $provinceList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchProvinceFormState &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isShowErrorMessages, isShowErrorMessages) ||
                other.isShowErrorMessages == isShowErrorMessages) &&
            const DeepCollectionEquality()
                .equals(other._searchResultList, _searchResultList) &&
            const DeepCollectionEquality()
                .equals(other._provinceList, _provinceList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      result,
      query,
      isSubmitting,
      isShowErrorMessages,
      const DeepCollectionEquality().hash(_searchResultList),
      const DeepCollectionEquality().hash(_provinceList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchProvinceFormStateCopyWith<_$_SearchProvinceFormState>
      get copyWith =>
          __$$_SearchProvinceFormStateCopyWithImpl<_$_SearchProvinceFormState>(
              this, _$identity);
}

abstract class _SearchProvinceFormState implements SearchProvinceFormState {
  const factory _SearchProvinceFormState(
      {required final RequestState result,
      required final String query,
      required final bool isSubmitting,
      required final bool isShowErrorMessages,
      required final List<String> searchResultList,
      required final List<String> provinceList}) = _$_SearchProvinceFormState;

  @override
  RequestState get result;
  @override
  String get query;
  @override
  bool get isSubmitting;
  @override
  bool get isShowErrorMessages;
  @override
  List<String> get searchResultList;
  @override
  List<String> get provinceList;
  @override
  @JsonKey(ignore: true)
  _$$_SearchProvinceFormStateCopyWith<_$_SearchProvinceFormState>
      get copyWith => throw _privateConstructorUsedError;
}
