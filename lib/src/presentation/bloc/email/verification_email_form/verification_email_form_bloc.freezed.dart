// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_email_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VerificationEmailFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onFinished,
    required TResult Function(CountdownController controller) startTimeOut,
    required TResult Function(String email) resendEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onFinished,
    TResult? Function(CountdownController controller)? startTimeOut,
    TResult? Function(String email)? resendEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onFinished,
    TResult Function(CountdownController controller)? startTimeOut,
    TResult Function(String email)? resendEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnFinished value) onFinished,
    required TResult Function(_StartTimeOut value) startTimeOut,
    required TResult Function(_ResendEmail value) resendEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnFinished value)? onFinished,
    TResult? Function(_StartTimeOut value)? startTimeOut,
    TResult? Function(_ResendEmail value)? resendEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnFinished value)? onFinished,
    TResult Function(_StartTimeOut value)? startTimeOut,
    TResult Function(_ResendEmail value)? resendEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationEmailFormEventCopyWith<$Res> {
  factory $VerificationEmailFormEventCopyWith(VerificationEmailFormEvent value,
          $Res Function(VerificationEmailFormEvent) then) =
      _$VerificationEmailFormEventCopyWithImpl<$Res,
          VerificationEmailFormEvent>;
}

/// @nodoc
class _$VerificationEmailFormEventCopyWithImpl<$Res,
        $Val extends VerificationEmailFormEvent>
    implements $VerificationEmailFormEventCopyWith<$Res> {
  _$VerificationEmailFormEventCopyWithImpl(this._value, this._then);

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
    extends _$VerificationEmailFormEventCopyWithImpl<$Res, _$_OnFinished>
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
    return 'VerificationEmailFormEvent.onFinished()';
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
    required TResult Function(String email) resendEmail,
  }) {
    return onFinished();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onFinished,
    TResult? Function(CountdownController controller)? startTimeOut,
    TResult? Function(String email)? resendEmail,
  }) {
    return onFinished?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onFinished,
    TResult Function(CountdownController controller)? startTimeOut,
    TResult Function(String email)? resendEmail,
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
    required TResult Function(_ResendEmail value) resendEmail,
  }) {
    return onFinished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnFinished value)? onFinished,
    TResult? Function(_StartTimeOut value)? startTimeOut,
    TResult? Function(_ResendEmail value)? resendEmail,
  }) {
    return onFinished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnFinished value)? onFinished,
    TResult Function(_StartTimeOut value)? startTimeOut,
    TResult Function(_ResendEmail value)? resendEmail,
    required TResult orElse(),
  }) {
    if (onFinished != null) {
      return onFinished(this);
    }
    return orElse();
  }
}

abstract class _OnFinished implements VerificationEmailFormEvent {
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
    extends _$VerificationEmailFormEventCopyWithImpl<$Res, _$_StartTimeOut>
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
    return 'VerificationEmailFormEvent.startTimeOut(controller: $controller)';
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
    required TResult Function(String email) resendEmail,
  }) {
    return startTimeOut(controller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onFinished,
    TResult? Function(CountdownController controller)? startTimeOut,
    TResult? Function(String email)? resendEmail,
  }) {
    return startTimeOut?.call(controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onFinished,
    TResult Function(CountdownController controller)? startTimeOut,
    TResult Function(String email)? resendEmail,
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
    required TResult Function(_ResendEmail value) resendEmail,
  }) {
    return startTimeOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnFinished value)? onFinished,
    TResult? Function(_StartTimeOut value)? startTimeOut,
    TResult? Function(_ResendEmail value)? resendEmail,
  }) {
    return startTimeOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnFinished value)? onFinished,
    TResult Function(_StartTimeOut value)? startTimeOut,
    TResult Function(_ResendEmail value)? resendEmail,
    required TResult orElse(),
  }) {
    if (startTimeOut != null) {
      return startTimeOut(this);
    }
    return orElse();
  }
}

abstract class _StartTimeOut implements VerificationEmailFormEvent {
  const factory _StartTimeOut(final CountdownController controller) =
      _$_StartTimeOut;

  CountdownController get controller;
  @JsonKey(ignore: true)
  _$$_StartTimeOutCopyWith<_$_StartTimeOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResendEmailCopyWith<$Res> {
  factory _$$_ResendEmailCopyWith(
          _$_ResendEmail value, $Res Function(_$_ResendEmail) then) =
      __$$_ResendEmailCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_ResendEmailCopyWithImpl<$Res>
    extends _$VerificationEmailFormEventCopyWithImpl<$Res, _$_ResendEmail>
    implements _$$_ResendEmailCopyWith<$Res> {
  __$$_ResendEmailCopyWithImpl(
      _$_ResendEmail _value, $Res Function(_$_ResendEmail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_ResendEmail(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResendEmail implements _ResendEmail {
  const _$_ResendEmail(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'VerificationEmailFormEvent.resendEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResendEmail &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResendEmailCopyWith<_$_ResendEmail> get copyWith =>
      __$$_ResendEmailCopyWithImpl<_$_ResendEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onFinished,
    required TResult Function(CountdownController controller) startTimeOut,
    required TResult Function(String email) resendEmail,
  }) {
    return resendEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onFinished,
    TResult? Function(CountdownController controller)? startTimeOut,
    TResult? Function(String email)? resendEmail,
  }) {
    return resendEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onFinished,
    TResult Function(CountdownController controller)? startTimeOut,
    TResult Function(String email)? resendEmail,
    required TResult orElse(),
  }) {
    if (resendEmail != null) {
      return resendEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnFinished value) onFinished,
    required TResult Function(_StartTimeOut value) startTimeOut,
    required TResult Function(_ResendEmail value) resendEmail,
  }) {
    return resendEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnFinished value)? onFinished,
    TResult? Function(_StartTimeOut value)? startTimeOut,
    TResult? Function(_ResendEmail value)? resendEmail,
  }) {
    return resendEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnFinished value)? onFinished,
    TResult Function(_StartTimeOut value)? startTimeOut,
    TResult Function(_ResendEmail value)? resendEmail,
    required TResult orElse(),
  }) {
    if (resendEmail != null) {
      return resendEmail(this);
    }
    return orElse();
  }
}

abstract class _ResendEmail implements VerificationEmailFormEvent {
  const factory _ResendEmail(final String email) = _$_ResendEmail;

  String get email;
  @JsonKey(ignore: true)
  _$$_ResendEmailCopyWith<_$_ResendEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VerificationEmailFormState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isTimeoutDone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerificationEmailFormStateCopyWith<VerificationEmailFormState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationEmailFormStateCopyWith<$Res> {
  factory $VerificationEmailFormStateCopyWith(VerificationEmailFormState value,
          $Res Function(VerificationEmailFormState) then) =
      _$VerificationEmailFormStateCopyWithImpl<$Res,
          VerificationEmailFormState>;
  @useResult
  $Res call(
      {RequestState state,
      String message,
      bool isSubmitting,
      bool isTimeoutDone});
}

/// @nodoc
class _$VerificationEmailFormStateCopyWithImpl<$Res,
        $Val extends VerificationEmailFormState>
    implements $VerificationEmailFormStateCopyWith<$Res> {
  _$VerificationEmailFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? isSubmitting = null,
    Object? isTimeoutDone = null,
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
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isTimeoutDone: null == isTimeoutDone
          ? _value.isTimeoutDone
          : isTimeoutDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerificationEmailFormStateCopyWith<$Res>
    implements $VerificationEmailFormStateCopyWith<$Res> {
  factory _$$_VerificationEmailFormStateCopyWith(
          _$_VerificationEmailFormState value,
          $Res Function(_$_VerificationEmailFormState) then) =
      __$$_VerificationEmailFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState state,
      String message,
      bool isSubmitting,
      bool isTimeoutDone});
}

/// @nodoc
class __$$_VerificationEmailFormStateCopyWithImpl<$Res>
    extends _$VerificationEmailFormStateCopyWithImpl<$Res,
        _$_VerificationEmailFormState>
    implements _$$_VerificationEmailFormStateCopyWith<$Res> {
  __$$_VerificationEmailFormStateCopyWithImpl(
      _$_VerificationEmailFormState _value,
      $Res Function(_$_VerificationEmailFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? isSubmitting = null,
    Object? isTimeoutDone = null,
  }) {
    return _then(_$_VerificationEmailFormState(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isTimeoutDone: null == isTimeoutDone
          ? _value.isTimeoutDone
          : isTimeoutDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_VerificationEmailFormState implements _VerificationEmailFormState {
  const _$_VerificationEmailFormState(
      {required this.state,
      required this.message,
      required this.isSubmitting,
      required this.isTimeoutDone});

  @override
  final RequestState state;
  @override
  final String message;
  @override
  final bool isSubmitting;
  @override
  final bool isTimeoutDone;

  @override
  String toString() {
    return 'VerificationEmailFormState(state: $state, message: $message, isSubmitting: $isSubmitting, isTimeoutDone: $isTimeoutDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerificationEmailFormState &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isTimeoutDone, isTimeoutDone) ||
                other.isTimeoutDone == isTimeoutDone));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, state, message, isSubmitting, isTimeoutDone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerificationEmailFormStateCopyWith<_$_VerificationEmailFormState>
      get copyWith => __$$_VerificationEmailFormStateCopyWithImpl<
          _$_VerificationEmailFormState>(this, _$identity);
}

abstract class _VerificationEmailFormState
    implements VerificationEmailFormState {
  const factory _VerificationEmailFormState(
      {required final RequestState state,
      required final String message,
      required final bool isSubmitting,
      required final bool isTimeoutDone}) = _$_VerificationEmailFormState;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  bool get isSubmitting;
  @override
  bool get isTimeoutDone;
  @override
  @JsonKey(ignore: true)
  _$$_VerificationEmailFormStateCopyWith<_$_VerificationEmailFormState>
      get copyWith => throw _privateConstructorUsedError;
}
