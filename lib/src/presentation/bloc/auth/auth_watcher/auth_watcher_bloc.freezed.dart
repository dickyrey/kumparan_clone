// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckRequested,
    TResult? Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_SignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthCheckRequested value)? authCheckRequested,
    TResult? Function(_SignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthWatcherEventCopyWith<$Res> {
  factory $AuthWatcherEventCopyWith(
          AuthWatcherEvent value, $Res Function(AuthWatcherEvent) then) =
      _$AuthWatcherEventCopyWithImpl<$Res, AuthWatcherEvent>;
}

/// @nodoc
class _$AuthWatcherEventCopyWithImpl<$Res, $Val extends AuthWatcherEvent>
    implements $AuthWatcherEventCopyWith<$Res> {
  _$AuthWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthCheckRequestedCopyWith<$Res> {
  factory _$$_AuthCheckRequestedCopyWith(_$_AuthCheckRequested value,
          $Res Function(_$_AuthCheckRequested) then) =
      __$$_AuthCheckRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthCheckRequestedCopyWithImpl<$Res>
    extends _$AuthWatcherEventCopyWithImpl<$Res, _$_AuthCheckRequested>
    implements _$$_AuthCheckRequestedCopyWith<$Res> {
  __$$_AuthCheckRequestedCopyWithImpl(
      _$_AuthCheckRequested _value, $Res Function(_$_AuthCheckRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthCheckRequested implements _AuthCheckRequested {
  const _$_AuthCheckRequested();

  @override
  String toString() {
    return 'AuthWatcherEvent.authCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signOut,
  }) {
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckRequested,
    TResult? Function()? signOut,
  }) {
    return authCheckRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_SignOut value) signOut,
  }) {
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthCheckRequested value)? authCheckRequested,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return authCheckRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested(this);
    }
    return orElse();
  }
}

abstract class _AuthCheckRequested implements AuthWatcherEvent {
  const factory _AuthCheckRequested() = _$_AuthCheckRequested;
}

/// @nodoc
abstract class _$$_SignOutCopyWith<$Res> {
  factory _$$_SignOutCopyWith(
          _$_SignOut value, $Res Function(_$_SignOut) then) =
      __$$_SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignOutCopyWithImpl<$Res>
    extends _$AuthWatcherEventCopyWithImpl<$Res, _$_SignOut>
    implements _$$_SignOutCopyWith<$Res> {
  __$$_SignOutCopyWithImpl(_$_SignOut _value, $Res Function(_$_SignOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignOut implements _SignOut {
  const _$_SignOut();

  @override
  String toString() {
    return 'AuthWatcherEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckRequested,
    TResult? Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_SignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthCheckRequested value)? authCheckRequested,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AuthWatcherEvent {
  const factory _SignOut() = _$_SignOut;
}

/// @nodoc
mixin _$AuthWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authInProgress,
    required TResult Function(String message) authInFailure,
    required TResult Function() authenticated,
    required TResult Function() notAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authInProgress,
    TResult? Function(String message)? authInFailure,
    TResult? Function()? authenticated,
    TResult? Function()? notAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authInProgress,
    TResult Function(String message)? authInFailure,
    TResult Function()? authenticated,
    TResult Function()? notAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AuthInProgress value) authInProgress,
    required TResult Function(_AuthInFailure value) authInFailure,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_NotAuthenticated value) notAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AuthInProgress value)? authInProgress,
    TResult? Function(_AuthInFailure value)? authInFailure,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_NotAuthenticated value)? notAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AuthInProgress value)? authInProgress,
    TResult Function(_AuthInFailure value)? authInFailure,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_NotAuthenticated value)? notAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthWatcherStateCopyWith<$Res> {
  factory $AuthWatcherStateCopyWith(
          AuthWatcherState value, $Res Function(AuthWatcherState) then) =
      _$AuthWatcherStateCopyWithImpl<$Res, AuthWatcherState>;
}

/// @nodoc
class _$AuthWatcherStateCopyWithImpl<$Res, $Val extends AuthWatcherState>
    implements $AuthWatcherStateCopyWith<$Res> {
  _$AuthWatcherStateCopyWithImpl(this._value, this._then);

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
    extends _$AuthWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthWatcherState.initial()';
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
    required TResult Function() authInProgress,
    required TResult Function(String message) authInFailure,
    required TResult Function() authenticated,
    required TResult Function() notAuthenticated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authInProgress,
    TResult? Function(String message)? authInFailure,
    TResult? Function()? authenticated,
    TResult? Function()? notAuthenticated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authInProgress,
    TResult Function(String message)? authInFailure,
    TResult Function()? authenticated,
    TResult Function()? notAuthenticated,
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
    required TResult Function(_AuthInProgress value) authInProgress,
    required TResult Function(_AuthInFailure value) authInFailure,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_NotAuthenticated value) notAuthenticated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AuthInProgress value)? authInProgress,
    TResult? Function(_AuthInFailure value)? authInFailure,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_NotAuthenticated value)? notAuthenticated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AuthInProgress value)? authInProgress,
    TResult Function(_AuthInFailure value)? authInFailure,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_NotAuthenticated value)? notAuthenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_AuthInProgressCopyWith<$Res> {
  factory _$$_AuthInProgressCopyWith(
          _$_AuthInProgress value, $Res Function(_$_AuthInProgress) then) =
      __$$_AuthInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthInProgressCopyWithImpl<$Res>
    extends _$AuthWatcherStateCopyWithImpl<$Res, _$_AuthInProgress>
    implements _$$_AuthInProgressCopyWith<$Res> {
  __$$_AuthInProgressCopyWithImpl(
      _$_AuthInProgress _value, $Res Function(_$_AuthInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthInProgress implements _AuthInProgress {
  const _$_AuthInProgress();

  @override
  String toString() {
    return 'AuthWatcherState.authInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authInProgress,
    required TResult Function(String message) authInFailure,
    required TResult Function() authenticated,
    required TResult Function() notAuthenticated,
  }) {
    return authInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authInProgress,
    TResult? Function(String message)? authInFailure,
    TResult? Function()? authenticated,
    TResult? Function()? notAuthenticated,
  }) {
    return authInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authInProgress,
    TResult Function(String message)? authInFailure,
    TResult Function()? authenticated,
    TResult Function()? notAuthenticated,
    required TResult orElse(),
  }) {
    if (authInProgress != null) {
      return authInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AuthInProgress value) authInProgress,
    required TResult Function(_AuthInFailure value) authInFailure,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_NotAuthenticated value) notAuthenticated,
  }) {
    return authInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AuthInProgress value)? authInProgress,
    TResult? Function(_AuthInFailure value)? authInFailure,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_NotAuthenticated value)? notAuthenticated,
  }) {
    return authInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AuthInProgress value)? authInProgress,
    TResult Function(_AuthInFailure value)? authInFailure,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_NotAuthenticated value)? notAuthenticated,
    required TResult orElse(),
  }) {
    if (authInProgress != null) {
      return authInProgress(this);
    }
    return orElse();
  }
}

abstract class _AuthInProgress implements AuthWatcherState {
  const factory _AuthInProgress() = _$_AuthInProgress;
}

/// @nodoc
abstract class _$$_AuthInFailureCopyWith<$Res> {
  factory _$$_AuthInFailureCopyWith(
          _$_AuthInFailure value, $Res Function(_$_AuthInFailure) then) =
      __$$_AuthInFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_AuthInFailureCopyWithImpl<$Res>
    extends _$AuthWatcherStateCopyWithImpl<$Res, _$_AuthInFailure>
    implements _$$_AuthInFailureCopyWith<$Res> {
  __$$_AuthInFailureCopyWithImpl(
      _$_AuthInFailure _value, $Res Function(_$_AuthInFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_AuthInFailure(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthInFailure implements _AuthInFailure {
  const _$_AuthInFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthWatcherState.authInFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthInFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthInFailureCopyWith<_$_AuthInFailure> get copyWith =>
      __$$_AuthInFailureCopyWithImpl<_$_AuthInFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authInProgress,
    required TResult Function(String message) authInFailure,
    required TResult Function() authenticated,
    required TResult Function() notAuthenticated,
  }) {
    return authInFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authInProgress,
    TResult? Function(String message)? authInFailure,
    TResult? Function()? authenticated,
    TResult? Function()? notAuthenticated,
  }) {
    return authInFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authInProgress,
    TResult Function(String message)? authInFailure,
    TResult Function()? authenticated,
    TResult Function()? notAuthenticated,
    required TResult orElse(),
  }) {
    if (authInFailure != null) {
      return authInFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AuthInProgress value) authInProgress,
    required TResult Function(_AuthInFailure value) authInFailure,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_NotAuthenticated value) notAuthenticated,
  }) {
    return authInFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AuthInProgress value)? authInProgress,
    TResult? Function(_AuthInFailure value)? authInFailure,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_NotAuthenticated value)? notAuthenticated,
  }) {
    return authInFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AuthInProgress value)? authInProgress,
    TResult Function(_AuthInFailure value)? authInFailure,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_NotAuthenticated value)? notAuthenticated,
    required TResult orElse(),
  }) {
    if (authInFailure != null) {
      return authInFailure(this);
    }
    return orElse();
  }
}

abstract class _AuthInFailure implements AuthWatcherState {
  const factory _AuthInFailure(final String message) = _$_AuthInFailure;

  String get message;
  @JsonKey(ignore: true)
  _$$_AuthInFailureCopyWith<_$_AuthInFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthenticatedCopyWith<$Res> {
  factory _$$_AuthenticatedCopyWith(
          _$_Authenticated value, $Res Function(_$_Authenticated) then) =
      __$$_AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticatedCopyWithImpl<$Res>
    extends _$AuthWatcherStateCopyWithImpl<$Res, _$_Authenticated>
    implements _$$_AuthenticatedCopyWith<$Res> {
  __$$_AuthenticatedCopyWithImpl(
      _$_Authenticated _value, $Res Function(_$_Authenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated();

  @override
  String toString() {
    return 'AuthWatcherState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authInProgress,
    required TResult Function(String message) authInFailure,
    required TResult Function() authenticated,
    required TResult Function() notAuthenticated,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authInProgress,
    TResult? Function(String message)? authInFailure,
    TResult? Function()? authenticated,
    TResult? Function()? notAuthenticated,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authInProgress,
    TResult Function(String message)? authInFailure,
    TResult Function()? authenticated,
    TResult Function()? notAuthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AuthInProgress value) authInProgress,
    required TResult Function(_AuthInFailure value) authInFailure,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_NotAuthenticated value) notAuthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AuthInProgress value)? authInProgress,
    TResult? Function(_AuthInFailure value)? authInFailure,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_NotAuthenticated value)? notAuthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AuthInProgress value)? authInProgress,
    TResult Function(_AuthInFailure value)? authInFailure,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_NotAuthenticated value)? notAuthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthWatcherState {
  const factory _Authenticated() = _$_Authenticated;
}

/// @nodoc
abstract class _$$_NotAuthenticatedCopyWith<$Res> {
  factory _$$_NotAuthenticatedCopyWith(
          _$_NotAuthenticated value, $Res Function(_$_NotAuthenticated) then) =
      __$$_NotAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NotAuthenticatedCopyWithImpl<$Res>
    extends _$AuthWatcherStateCopyWithImpl<$Res, _$_NotAuthenticated>
    implements _$$_NotAuthenticatedCopyWith<$Res> {
  __$$_NotAuthenticatedCopyWithImpl(
      _$_NotAuthenticated _value, $Res Function(_$_NotAuthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NotAuthenticated implements _NotAuthenticated {
  const _$_NotAuthenticated();

  @override
  String toString() {
    return 'AuthWatcherState.notAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NotAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authInProgress,
    required TResult Function(String message) authInFailure,
    required TResult Function() authenticated,
    required TResult Function() notAuthenticated,
  }) {
    return notAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authInProgress,
    TResult? Function(String message)? authInFailure,
    TResult? Function()? authenticated,
    TResult? Function()? notAuthenticated,
  }) {
    return notAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authInProgress,
    TResult Function(String message)? authInFailure,
    TResult Function()? authenticated,
    TResult Function()? notAuthenticated,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AuthInProgress value) authInProgress,
    required TResult Function(_AuthInFailure value) authInFailure,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_NotAuthenticated value) notAuthenticated,
  }) {
    return notAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AuthInProgress value)? authInProgress,
    TResult? Function(_AuthInFailure value)? authInFailure,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_NotAuthenticated value)? notAuthenticated,
  }) {
    return notAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AuthInProgress value)? authInProgress,
    TResult Function(_AuthInFailure value)? authInFailure,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_NotAuthenticated value)? notAuthenticated,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _NotAuthenticated implements AuthWatcherState {
  const factory _NotAuthenticated() = _$_NotAuthenticated;
}
