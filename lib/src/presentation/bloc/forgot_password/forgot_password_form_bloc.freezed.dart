// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgotPasswordFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email) emailOnChanged,
    required TResult Function() sendPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function()? sendPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? emailOnChanged,
    TResult Function()? sendPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_SendPressed value) sendPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_SendPressed value)? sendPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_SendPressed value)? sendPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordFormEventCopyWith<$Res> {
  factory $ForgotPasswordFormEventCopyWith(ForgotPasswordFormEvent value,
          $Res Function(ForgotPasswordFormEvent) then) =
      _$ForgotPasswordFormEventCopyWithImpl<$Res, ForgotPasswordFormEvent>;
}

/// @nodoc
class _$ForgotPasswordFormEventCopyWithImpl<$Res,
        $Val extends ForgotPasswordFormEvent>
    implements $ForgotPasswordFormEventCopyWith<$Res> {
  _$ForgotPasswordFormEventCopyWithImpl(this._value, this._then);

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
    extends _$ForgotPasswordFormEventCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ForgotPasswordFormEvent.initial()';
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
    required TResult Function(String email) emailOnChanged,
    required TResult Function() sendPressed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function()? sendPressed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? emailOnChanged,
    TResult Function()? sendPressed,
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
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_SendPressed value) sendPressed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_SendPressed value)? sendPressed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_SendPressed value)? sendPressed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ForgotPasswordFormEvent {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_EmailOnChangedCopyWith<$Res> {
  factory _$$_EmailOnChangedCopyWith(
          _$_EmailOnChanged value, $Res Function(_$_EmailOnChanged) then) =
      __$$_EmailOnChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_EmailOnChangedCopyWithImpl<$Res>
    extends _$ForgotPasswordFormEventCopyWithImpl<$Res, _$_EmailOnChanged>
    implements _$$_EmailOnChangedCopyWith<$Res> {
  __$$_EmailOnChangedCopyWithImpl(
      _$_EmailOnChanged _value, $Res Function(_$_EmailOnChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_EmailOnChanged(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailOnChanged implements _EmailOnChanged {
  const _$_EmailOnChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'ForgotPasswordFormEvent.emailOnChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailOnChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailOnChangedCopyWith<_$_EmailOnChanged> get copyWith =>
      __$$_EmailOnChangedCopyWithImpl<_$_EmailOnChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email) emailOnChanged,
    required TResult Function() sendPressed,
  }) {
    return emailOnChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function()? sendPressed,
  }) {
    return emailOnChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? emailOnChanged,
    TResult Function()? sendPressed,
    required TResult orElse(),
  }) {
    if (emailOnChanged != null) {
      return emailOnChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_SendPressed value) sendPressed,
  }) {
    return emailOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_SendPressed value)? sendPressed,
  }) {
    return emailOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_SendPressed value)? sendPressed,
    required TResult orElse(),
  }) {
    if (emailOnChanged != null) {
      return emailOnChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailOnChanged implements ForgotPasswordFormEvent {
  const factory _EmailOnChanged(final String email) = _$_EmailOnChanged;

  String get email;
  @JsonKey(ignore: true)
  _$$_EmailOnChangedCopyWith<_$_EmailOnChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SendPressedCopyWith<$Res> {
  factory _$$_SendPressedCopyWith(
          _$_SendPressed value, $Res Function(_$_SendPressed) then) =
      __$$_SendPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SendPressedCopyWithImpl<$Res>
    extends _$ForgotPasswordFormEventCopyWithImpl<$Res, _$_SendPressed>
    implements _$$_SendPressedCopyWith<$Res> {
  __$$_SendPressedCopyWithImpl(
      _$_SendPressed _value, $Res Function(_$_SendPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SendPressed implements _SendPressed {
  const _$_SendPressed();

  @override
  String toString() {
    return 'ForgotPasswordFormEvent.sendPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SendPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email) emailOnChanged,
    required TResult Function() sendPressed,
  }) {
    return sendPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function()? sendPressed,
  }) {
    return sendPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? emailOnChanged,
    TResult Function()? sendPressed,
    required TResult orElse(),
  }) {
    if (sendPressed != null) {
      return sendPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_SendPressed value) sendPressed,
  }) {
    return sendPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_SendPressed value)? sendPressed,
  }) {
    return sendPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_SendPressed value)? sendPressed,
    required TResult orElse(),
  }) {
    if (sendPressed != null) {
      return sendPressed(this);
    }
    return orElse();
  }
}

abstract class _SendPressed implements ForgotPasswordFormEvent {
  const factory _SendPressed() = _$_SendPressed;
}

/// @nodoc
mixin _$ForgotPasswordFormState {
  RequestState get result => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isShowErrorMessages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordFormStateCopyWith<ForgotPasswordFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordFormStateCopyWith<$Res> {
  factory $ForgotPasswordFormStateCopyWith(ForgotPasswordFormState value,
          $Res Function(ForgotPasswordFormState) then) =
      _$ForgotPasswordFormStateCopyWithImpl<$Res, ForgotPasswordFormState>;
  @useResult
  $Res call(
      {RequestState result,
      String email,
      bool isSubmitting,
      bool isShowErrorMessages});
}

/// @nodoc
class _$ForgotPasswordFormStateCopyWithImpl<$Res,
        $Val extends ForgotPasswordFormState>
    implements $ForgotPasswordFormStateCopyWith<$Res> {
  _$ForgotPasswordFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? email = null,
    Object? isSubmitting = null,
    Object? isShowErrorMessages = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as RequestState,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowErrorMessages: null == isShowErrorMessages
          ? _value.isShowErrorMessages
          : isShowErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ForgotPasswordFormStateCopyWith<$Res>
    implements $ForgotPasswordFormStateCopyWith<$Res> {
  factory _$$_ForgotPasswordFormStateCopyWith(_$_ForgotPasswordFormState value,
          $Res Function(_$_ForgotPasswordFormState) then) =
      __$$_ForgotPasswordFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState result,
      String email,
      bool isSubmitting,
      bool isShowErrorMessages});
}

/// @nodoc
class __$$_ForgotPasswordFormStateCopyWithImpl<$Res>
    extends _$ForgotPasswordFormStateCopyWithImpl<$Res,
        _$_ForgotPasswordFormState>
    implements _$$_ForgotPasswordFormStateCopyWith<$Res> {
  __$$_ForgotPasswordFormStateCopyWithImpl(_$_ForgotPasswordFormState _value,
      $Res Function(_$_ForgotPasswordFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? email = null,
    Object? isSubmitting = null,
    Object? isShowErrorMessages = null,
  }) {
    return _then(_$_ForgotPasswordFormState(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as RequestState,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowErrorMessages: null == isShowErrorMessages
          ? _value.isShowErrorMessages
          : isShowErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ForgotPasswordFormState implements _ForgotPasswordFormState {
  const _$_ForgotPasswordFormState(
      {required this.result,
      required this.email,
      required this.isSubmitting,
      required this.isShowErrorMessages});

  @override
  final RequestState result;
  @override
  final String email;
  @override
  final bool isSubmitting;
  @override
  final bool isShowErrorMessages;

  @override
  String toString() {
    return 'ForgotPasswordFormState(result: $result, email: $email, isSubmitting: $isSubmitting, isShowErrorMessages: $isShowErrorMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotPasswordFormState &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isShowErrorMessages, isShowErrorMessages) ||
                other.isShowErrorMessages == isShowErrorMessages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, result, email, isSubmitting, isShowErrorMessages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForgotPasswordFormStateCopyWith<_$_ForgotPasswordFormState>
      get copyWith =>
          __$$_ForgotPasswordFormStateCopyWithImpl<_$_ForgotPasswordFormState>(
              this, _$identity);
}

abstract class _ForgotPasswordFormState implements ForgotPasswordFormState {
  const factory _ForgotPasswordFormState(
      {required final RequestState result,
      required final String email,
      required final bool isSubmitting,
      required final bool isShowErrorMessages}) = _$_ForgotPasswordFormState;

  @override
  RequestState get result;
  @override
  String get email;
  @override
  bool get isSubmitting;
  @override
  bool get isShowErrorMessages;
  @override
  @JsonKey(ignore: true)
  _$$_ForgotPasswordFormStateCopyWith<_$_ForgotPasswordFormState>
      get copyWith => throw _privateConstructorUsedError;
}
