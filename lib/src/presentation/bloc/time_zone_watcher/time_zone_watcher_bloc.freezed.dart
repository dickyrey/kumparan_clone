// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_zone_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimeZoneWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTimeZone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTimeZone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTimeZone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTimeZone value) fetchTimeZone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTimeZone value)? fetchTimeZone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTimeZone value)? fetchTimeZone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeZoneWatcherEventCopyWith<$Res> {
  factory $TimeZoneWatcherEventCopyWith(TimeZoneWatcherEvent value,
          $Res Function(TimeZoneWatcherEvent) then) =
      _$TimeZoneWatcherEventCopyWithImpl<$Res, TimeZoneWatcherEvent>;
}

/// @nodoc
class _$TimeZoneWatcherEventCopyWithImpl<$Res,
        $Val extends TimeZoneWatcherEvent>
    implements $TimeZoneWatcherEventCopyWith<$Res> {
  _$TimeZoneWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchTimeZoneCopyWith<$Res> {
  factory _$$_FetchTimeZoneCopyWith(
          _$_FetchTimeZone value, $Res Function(_$_FetchTimeZone) then) =
      __$$_FetchTimeZoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchTimeZoneCopyWithImpl<$Res>
    extends _$TimeZoneWatcherEventCopyWithImpl<$Res, _$_FetchTimeZone>
    implements _$$_FetchTimeZoneCopyWith<$Res> {
  __$$_FetchTimeZoneCopyWithImpl(
      _$_FetchTimeZone _value, $Res Function(_$_FetchTimeZone) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchTimeZone implements _FetchTimeZone {
  const _$_FetchTimeZone();

  @override
  String toString() {
    return 'TimeZoneWatcherEvent.fetchTimeZone()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchTimeZone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTimeZone,
  }) {
    return fetchTimeZone();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTimeZone,
  }) {
    return fetchTimeZone?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTimeZone,
    required TResult orElse(),
  }) {
    if (fetchTimeZone != null) {
      return fetchTimeZone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTimeZone value) fetchTimeZone,
  }) {
    return fetchTimeZone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTimeZone value)? fetchTimeZone,
  }) {
    return fetchTimeZone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTimeZone value)? fetchTimeZone,
    required TResult orElse(),
  }) {
    if (fetchTimeZone != null) {
      return fetchTimeZone(this);
    }
    return orElse();
  }
}

abstract class _FetchTimeZone implements TimeZoneWatcherEvent {
  const factory _FetchTimeZone() = _$_FetchTimeZone;
}

/// @nodoc
mixin _$TimeZoneWatcherState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get dateTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimeZoneWatcherStateCopyWith<TimeZoneWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeZoneWatcherStateCopyWith<$Res> {
  factory $TimeZoneWatcherStateCopyWith(TimeZoneWatcherState value,
          $Res Function(TimeZoneWatcherState) then) =
      _$TimeZoneWatcherStateCopyWithImpl<$Res, TimeZoneWatcherState>;
  @useResult
  $Res call({RequestState state, String message, String dateTime});
}

/// @nodoc
class _$TimeZoneWatcherStateCopyWithImpl<$Res,
        $Val extends TimeZoneWatcherState>
    implements $TimeZoneWatcherStateCopyWith<$Res> {
  _$TimeZoneWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? dateTime = null,
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
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $TimeZoneWatcherStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestState state, String message, String dateTime});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TimeZoneWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? dateTime = null,
  }) {
    return _then(_$_Initial(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.state, required this.message, required this.dateTime});

  @override
  final RequestState state;
  @override
  final String message;
  @override
  final String dateTime;

  @override
  String toString() {
    return 'TimeZoneWatcherState(state: $state, message: $message, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, message, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements TimeZoneWatcherState {
  const factory _Initial(
      {required final RequestState state,
      required final String message,
      required final String dateTime}) = _$_Initial;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  String get dateTime;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
