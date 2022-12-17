// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_email_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VerificationEmailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onFinished,
    required TResult Function(CountdownController controller) startTimeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onFinished,
    TResult? Function(CountdownController controller)? startTimeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onFinished,
    TResult Function(CountdownController controller)? startTimeOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnFinished value) onFinished,
    required TResult Function(_StartTimeOut value) startTimeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnFinished value)? onFinished,
    TResult? Function(_StartTimeOut value)? startTimeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnFinished value)? onFinished,
    TResult Function(_StartTimeOut value)? startTimeOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationEmailEventCopyWith<$Res> {
  factory $VerificationEmailEventCopyWith(VerificationEmailEvent value,
          $Res Function(VerificationEmailEvent) then) =
      _$VerificationEmailEventCopyWithImpl<$Res, VerificationEmailEvent>;
}

/// @nodoc
class _$VerificationEmailEventCopyWithImpl<$Res,
        $Val extends VerificationEmailEvent>
    implements $VerificationEmailEventCopyWith<$Res> {
  _$VerificationEmailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_OnFinishedCopyWith<$Res> {
  factory _$$_OnFinishedCopyWith(
          _$_OnFinished value, $Res Function(_$_OnFinished) then) =
      __$$_OnFinishedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnFinishedCopyWithImpl<$Res>
    extends _$VerificationEmailEventCopyWithImpl<$Res, _$_OnFinished>
    implements _$$_OnFinishedCopyWith<$Res> {
  __$$_OnFinishedCopyWithImpl(
      _$_OnFinished _value, $Res Function(_$_OnFinished) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnFinished implements _OnFinished {
  const _$_OnFinished();

  @override
  String toString() {
    return 'VerificationEmailEvent.onFinished()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnFinished);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onFinished,
    required TResult Function(CountdownController controller) startTimeOut,
  }) {
    return onFinished();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onFinished,
    TResult? Function(CountdownController controller)? startTimeOut,
  }) {
    return onFinished?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onFinished,
    TResult Function(CountdownController controller)? startTimeOut,
    required TResult orElse(),
  }) {
    if (onFinished != null) {
      return onFinished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnFinished value) onFinished,
    required TResult Function(_StartTimeOut value) startTimeOut,
  }) {
    return onFinished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnFinished value)? onFinished,
    TResult? Function(_StartTimeOut value)? startTimeOut,
  }) {
    return onFinished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnFinished value)? onFinished,
    TResult Function(_StartTimeOut value)? startTimeOut,
    required TResult orElse(),
  }) {
    if (onFinished != null) {
      return onFinished(this);
    }
    return orElse();
  }
}

abstract class _OnFinished implements VerificationEmailEvent {
  const factory _OnFinished() = _$_OnFinished;
}

/// @nodoc
abstract class _$$_StartTimeOutCopyWith<$Res> {
  factory _$$_StartTimeOutCopyWith(
          _$_StartTimeOut value, $Res Function(_$_StartTimeOut) then) =
      __$$_StartTimeOutCopyWithImpl<$Res>;
  @useResult
  $Res call({CountdownController controller});
}

/// @nodoc
class __$$_StartTimeOutCopyWithImpl<$Res>
    extends _$VerificationEmailEventCopyWithImpl<$Res, _$_StartTimeOut>
    implements _$$_StartTimeOutCopyWith<$Res> {
  __$$_StartTimeOutCopyWithImpl(
      _$_StartTimeOut _value, $Res Function(_$_StartTimeOut) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = null,
  }) {
    return _then(_$_StartTimeOut(
      null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as CountdownController,
    ));
  }
}

/// @nodoc

class _$_StartTimeOut implements _StartTimeOut {
  const _$_StartTimeOut(this.controller);

  @override
  final CountdownController controller;

  @override
  String toString() {
    return 'VerificationEmailEvent.startTimeOut(controller: $controller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartTimeOut &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controller);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartTimeOutCopyWith<_$_StartTimeOut> get copyWith =>
      __$$_StartTimeOutCopyWithImpl<_$_StartTimeOut>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onFinished,
    required TResult Function(CountdownController controller) startTimeOut,
  }) {
    return startTimeOut(controller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onFinished,
    TResult? Function(CountdownController controller)? startTimeOut,
  }) {
    return startTimeOut?.call(controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onFinished,
    TResult Function(CountdownController controller)? startTimeOut,
    required TResult orElse(),
  }) {
    if (startTimeOut != null) {
      return startTimeOut(controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnFinished value) onFinished,
    required TResult Function(_StartTimeOut value) startTimeOut,
  }) {
    return startTimeOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnFinished value)? onFinished,
    TResult? Function(_StartTimeOut value)? startTimeOut,
  }) {
    return startTimeOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnFinished value)? onFinished,
    TResult Function(_StartTimeOut value)? startTimeOut,
    required TResult orElse(),
  }) {
    if (startTimeOut != null) {
      return startTimeOut(this);
    }
    return orElse();
  }
}

abstract class _StartTimeOut implements VerificationEmailEvent {
  const factory _StartTimeOut(final CountdownController controller) =
      _$_StartTimeOut;

  CountdownController get controller;
  @JsonKey(ignore: true)
  _$$_StartTimeOutCopyWith<_$_StartTimeOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VerificationEmailState {
  bool get isTimeoutDone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerificationEmailStateCopyWith<VerificationEmailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationEmailStateCopyWith<$Res> {
  factory $VerificationEmailStateCopyWith(VerificationEmailState value,
          $Res Function(VerificationEmailState) then) =
      _$VerificationEmailStateCopyWithImpl<$Res, VerificationEmailState>;
  @useResult
  $Res call({bool isTimeoutDone});
}

/// @nodoc
class _$VerificationEmailStateCopyWithImpl<$Res,
        $Val extends VerificationEmailState>
    implements $VerificationEmailStateCopyWith<$Res> {
  _$VerificationEmailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTimeoutDone = null,
  }) {
    return _then(_value.copyWith(
      isTimeoutDone: null == isTimeoutDone
          ? _value.isTimeoutDone
          : isTimeoutDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerificationEmailStateCopyWith<$Res>
    implements $VerificationEmailStateCopyWith<$Res> {
  factory _$$_VerificationEmailStateCopyWith(_$_VerificationEmailState value,
          $Res Function(_$_VerificationEmailState) then) =
      __$$_VerificationEmailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isTimeoutDone});
}

/// @nodoc
class __$$_VerificationEmailStateCopyWithImpl<$Res>
    extends _$VerificationEmailStateCopyWithImpl<$Res,
        _$_VerificationEmailState>
    implements _$$_VerificationEmailStateCopyWith<$Res> {
  __$$_VerificationEmailStateCopyWithImpl(_$_VerificationEmailState _value,
      $Res Function(_$_VerificationEmailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTimeoutDone = null,
  }) {
    return _then(_$_VerificationEmailState(
      isTimeoutDone: null == isTimeoutDone
          ? _value.isTimeoutDone
          : isTimeoutDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_VerificationEmailState implements _VerificationEmailState {
  const _$_VerificationEmailState({required this.isTimeoutDone});

  @override
  final bool isTimeoutDone;

  @override
  String toString() {
    return 'VerificationEmailState(isTimeoutDone: $isTimeoutDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerificationEmailState &&
            (identical(other.isTimeoutDone, isTimeoutDone) ||
                other.isTimeoutDone == isTimeoutDone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isTimeoutDone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerificationEmailStateCopyWith<_$_VerificationEmailState> get copyWith =>
      __$$_VerificationEmailStateCopyWithImpl<_$_VerificationEmailState>(
          this, _$identity);
}

abstract class _VerificationEmailState implements VerificationEmailState {
  const factory _VerificationEmailState({required final bool isTimeoutDone}) =
      _$_VerificationEmailState;

  @override
  bool get isTimeoutDone;
  @override
  @JsonKey(ignore: true)
  _$$_VerificationEmailStateCopyWith<_$_VerificationEmailState> get copyWith =>
      throw _privateConstructorUsedError;
}
