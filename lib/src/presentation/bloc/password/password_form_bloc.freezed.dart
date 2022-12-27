// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PasswordFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String password) passwordOnChanged,
    required TResult Function(String repeatPassword) repeatPasswordOnChanged,
    required TResult Function() sendPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String password)? passwordOnChanged,
    TResult? Function(String repeatPassword)? repeatPasswordOnChanged,
    TResult? Function()? sendPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String password)? passwordOnChanged,
    TResult Function(String repeatPassword)? repeatPasswordOnChanged,
    TResult Function()? sendPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_RepeatPasswordOnChanged value)
        repeatPasswordOnChanged,
    required TResult Function(_SendPressed value) sendPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_RepeatPasswordOnChanged value)? repeatPasswordOnChanged,
    TResult? Function(_SendPressed value)? sendPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_RepeatPasswordOnChanged value)? repeatPasswordOnChanged,
    TResult Function(_SendPressed value)? sendPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordFormEventCopyWith<$Res> {
  factory $PasswordFormEventCopyWith(
          PasswordFormEvent value, $Res Function(PasswordFormEvent) then) =
      _$PasswordFormEventCopyWithImpl<$Res, PasswordFormEvent>;
}

/// @nodoc
class _$PasswordFormEventCopyWithImpl<$Res, $Val extends PasswordFormEvent>
    implements $PasswordFormEventCopyWith<$Res> {
  _$PasswordFormEventCopyWithImpl(this._value, this._then);

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
    extends _$PasswordFormEventCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PasswordFormEvent.initial()';
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
    required TResult Function(String password) passwordOnChanged,
    required TResult Function(String repeatPassword) repeatPasswordOnChanged,
    required TResult Function() sendPressed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String password)? passwordOnChanged,
    TResult? Function(String repeatPassword)? repeatPasswordOnChanged,
    TResult? Function()? sendPressed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String password)? passwordOnChanged,
    TResult Function(String repeatPassword)? repeatPasswordOnChanged,
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
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_RepeatPasswordOnChanged value)
        repeatPasswordOnChanged,
    required TResult Function(_SendPressed value) sendPressed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_RepeatPasswordOnChanged value)? repeatPasswordOnChanged,
    TResult? Function(_SendPressed value)? sendPressed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_RepeatPasswordOnChanged value)? repeatPasswordOnChanged,
    TResult Function(_SendPressed value)? sendPressed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PasswordFormEvent {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_PasswordOnChangedCopyWith<$Res> {
  factory _$$_PasswordOnChangedCopyWith(_$_PasswordOnChanged value,
          $Res Function(_$_PasswordOnChanged) then) =
      __$$_PasswordOnChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_PasswordOnChangedCopyWithImpl<$Res>
    extends _$PasswordFormEventCopyWithImpl<$Res, _$_PasswordOnChanged>
    implements _$$_PasswordOnChangedCopyWith<$Res> {
  __$$_PasswordOnChangedCopyWithImpl(
      _$_PasswordOnChanged _value, $Res Function(_$_PasswordOnChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_PasswordOnChanged(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordOnChanged implements _PasswordOnChanged {
  const _$_PasswordOnChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'PasswordFormEvent.passwordOnChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordOnChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordOnChangedCopyWith<_$_PasswordOnChanged> get copyWith =>
      __$$_PasswordOnChangedCopyWithImpl<_$_PasswordOnChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String password) passwordOnChanged,
    required TResult Function(String repeatPassword) repeatPasswordOnChanged,
    required TResult Function() sendPressed,
  }) {
    return passwordOnChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String password)? passwordOnChanged,
    TResult? Function(String repeatPassword)? repeatPasswordOnChanged,
    TResult? Function()? sendPressed,
  }) {
    return passwordOnChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String password)? passwordOnChanged,
    TResult Function(String repeatPassword)? repeatPasswordOnChanged,
    TResult Function()? sendPressed,
    required TResult orElse(),
  }) {
    if (passwordOnChanged != null) {
      return passwordOnChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_RepeatPasswordOnChanged value)
        repeatPasswordOnChanged,
    required TResult Function(_SendPressed value) sendPressed,
  }) {
    return passwordOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_RepeatPasswordOnChanged value)? repeatPasswordOnChanged,
    TResult? Function(_SendPressed value)? sendPressed,
  }) {
    return passwordOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_RepeatPasswordOnChanged value)? repeatPasswordOnChanged,
    TResult Function(_SendPressed value)? sendPressed,
    required TResult orElse(),
  }) {
    if (passwordOnChanged != null) {
      return passwordOnChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordOnChanged implements PasswordFormEvent {
  const factory _PasswordOnChanged(final String password) =
      _$_PasswordOnChanged;

  String get password;
  @JsonKey(ignore: true)
  _$$_PasswordOnChangedCopyWith<_$_PasswordOnChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RepeatPasswordOnChangedCopyWith<$Res> {
  factory _$$_RepeatPasswordOnChangedCopyWith(_$_RepeatPasswordOnChanged value,
          $Res Function(_$_RepeatPasswordOnChanged) then) =
      __$$_RepeatPasswordOnChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String repeatPassword});
}

/// @nodoc
class __$$_RepeatPasswordOnChangedCopyWithImpl<$Res>
    extends _$PasswordFormEventCopyWithImpl<$Res, _$_RepeatPasswordOnChanged>
    implements _$$_RepeatPasswordOnChangedCopyWith<$Res> {
  __$$_RepeatPasswordOnChangedCopyWithImpl(_$_RepeatPasswordOnChanged _value,
      $Res Function(_$_RepeatPasswordOnChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repeatPassword = null,
  }) {
    return _then(_$_RepeatPasswordOnChanged(
      null == repeatPassword
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RepeatPasswordOnChanged implements _RepeatPasswordOnChanged {
  const _$_RepeatPasswordOnChanged(this.repeatPassword);

  @override
  final String repeatPassword;

  @override
  String toString() {
    return 'PasswordFormEvent.repeatPasswordOnChanged(repeatPassword: $repeatPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RepeatPasswordOnChanged &&
            (identical(other.repeatPassword, repeatPassword) ||
                other.repeatPassword == repeatPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, repeatPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RepeatPasswordOnChangedCopyWith<_$_RepeatPasswordOnChanged>
      get copyWith =>
          __$$_RepeatPasswordOnChangedCopyWithImpl<_$_RepeatPasswordOnChanged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String password) passwordOnChanged,
    required TResult Function(String repeatPassword) repeatPasswordOnChanged,
    required TResult Function() sendPressed,
  }) {
    return repeatPasswordOnChanged(repeatPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String password)? passwordOnChanged,
    TResult? Function(String repeatPassword)? repeatPasswordOnChanged,
    TResult? Function()? sendPressed,
  }) {
    return repeatPasswordOnChanged?.call(repeatPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String password)? passwordOnChanged,
    TResult Function(String repeatPassword)? repeatPasswordOnChanged,
    TResult Function()? sendPressed,
    required TResult orElse(),
  }) {
    if (repeatPasswordOnChanged != null) {
      return repeatPasswordOnChanged(repeatPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_RepeatPasswordOnChanged value)
        repeatPasswordOnChanged,
    required TResult Function(_SendPressed value) sendPressed,
  }) {
    return repeatPasswordOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_RepeatPasswordOnChanged value)? repeatPasswordOnChanged,
    TResult? Function(_SendPressed value)? sendPressed,
  }) {
    return repeatPasswordOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_RepeatPasswordOnChanged value)? repeatPasswordOnChanged,
    TResult Function(_SendPressed value)? sendPressed,
    required TResult orElse(),
  }) {
    if (repeatPasswordOnChanged != null) {
      return repeatPasswordOnChanged(this);
    }
    return orElse();
  }
}

abstract class _RepeatPasswordOnChanged implements PasswordFormEvent {
  const factory _RepeatPasswordOnChanged(final String repeatPassword) =
      _$_RepeatPasswordOnChanged;

  String get repeatPassword;
  @JsonKey(ignore: true)
  _$$_RepeatPasswordOnChangedCopyWith<_$_RepeatPasswordOnChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SendPressedCopyWith<$Res> {
  factory _$$_SendPressedCopyWith(
          _$_SendPressed value, $Res Function(_$_SendPressed) then) =
      __$$_SendPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SendPressedCopyWithImpl<$Res>
    extends _$PasswordFormEventCopyWithImpl<$Res, _$_SendPressed>
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
    return 'PasswordFormEvent.sendPressed()';
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
    required TResult Function(String password) passwordOnChanged,
    required TResult Function(String repeatPassword) repeatPasswordOnChanged,
    required TResult Function() sendPressed,
  }) {
    return sendPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String password)? passwordOnChanged,
    TResult? Function(String repeatPassword)? repeatPasswordOnChanged,
    TResult? Function()? sendPressed,
  }) {
    return sendPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String password)? passwordOnChanged,
    TResult Function(String repeatPassword)? repeatPasswordOnChanged,
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
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_RepeatPasswordOnChanged value)
        repeatPasswordOnChanged,
    required TResult Function(_SendPressed value) sendPressed,
  }) {
    return sendPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_RepeatPasswordOnChanged value)? repeatPasswordOnChanged,
    TResult? Function(_SendPressed value)? sendPressed,
  }) {
    return sendPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_RepeatPasswordOnChanged value)? repeatPasswordOnChanged,
    TResult Function(_SendPressed value)? sendPressed,
    required TResult orElse(),
  }) {
    if (sendPressed != null) {
      return sendPressed(this);
    }
    return orElse();
  }
}

abstract class _SendPressed implements PasswordFormEvent {
  const factory _SendPressed() = _$_SendPressed;
}

/// @nodoc
mixin _$PasswordFormState {
  RequestState get result => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get repeatPassword => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isShowErrorMessages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordFormStateCopyWith<PasswordFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordFormStateCopyWith<$Res> {
  factory $PasswordFormStateCopyWith(
          PasswordFormState value, $Res Function(PasswordFormState) then) =
      _$PasswordFormStateCopyWithImpl<$Res, PasswordFormState>;
  @useResult
  $Res call(
      {RequestState result,
      String password,
      String repeatPassword,
      bool isSubmitting,
      bool isShowErrorMessages});
}

/// @nodoc
class _$PasswordFormStateCopyWithImpl<$Res, $Val extends PasswordFormState>
    implements $PasswordFormStateCopyWith<$Res> {
  _$PasswordFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? password = null,
    Object? repeatPassword = null,
    Object? isSubmitting = null,
    Object? isShowErrorMessages = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as RequestState,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      repeatPassword: null == repeatPassword
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_PasswordFormStateCopyWith<$Res>
    implements $PasswordFormStateCopyWith<$Res> {
  factory _$$_PasswordFormStateCopyWith(_$_PasswordFormState value,
          $Res Function(_$_PasswordFormState) then) =
      __$$_PasswordFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState result,
      String password,
      String repeatPassword,
      bool isSubmitting,
      bool isShowErrorMessages});
}

/// @nodoc
class __$$_PasswordFormStateCopyWithImpl<$Res>
    extends _$PasswordFormStateCopyWithImpl<$Res, _$_PasswordFormState>
    implements _$$_PasswordFormStateCopyWith<$Res> {
  __$$_PasswordFormStateCopyWithImpl(
      _$_PasswordFormState _value, $Res Function(_$_PasswordFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? password = null,
    Object? repeatPassword = null,
    Object? isSubmitting = null,
    Object? isShowErrorMessages = null,
  }) {
    return _then(_$_PasswordFormState(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as RequestState,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      repeatPassword: null == repeatPassword
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
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

class _$_PasswordFormState implements _PasswordFormState {
  const _$_PasswordFormState(
      {required this.result,
      required this.password,
      required this.repeatPassword,
      required this.isSubmitting,
      required this.isShowErrorMessages});

  @override
  final RequestState result;
  @override
  final String password;
  @override
  final String repeatPassword;
  @override
  final bool isSubmitting;
  @override
  final bool isShowErrorMessages;

  @override
  String toString() {
    return 'PasswordFormState(result: $result, password: $password, repeatPassword: $repeatPassword, isSubmitting: $isSubmitting, isShowErrorMessages: $isShowErrorMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordFormState &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.repeatPassword, repeatPassword) ||
                other.repeatPassword == repeatPassword) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isShowErrorMessages, isShowErrorMessages) ||
                other.isShowErrorMessages == isShowErrorMessages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result, password, repeatPassword,
      isSubmitting, isShowErrorMessages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordFormStateCopyWith<_$_PasswordFormState> get copyWith =>
      __$$_PasswordFormStateCopyWithImpl<_$_PasswordFormState>(
          this, _$identity);
}

abstract class _PasswordFormState implements PasswordFormState {
  const factory _PasswordFormState(
      {required final RequestState result,
      required final String password,
      required final String repeatPassword,
      required final bool isSubmitting,
      required final bool isShowErrorMessages}) = _$_PasswordFormState;

  @override
  RequestState get result;
  @override
  String get password;
  @override
  String get repeatPassword;
  @override
  bool get isSubmitting;
  @override
  bool get isShowErrorMessages;
  @override
  @JsonKey(ignore: true)
  _$$_PasswordFormStateCopyWith<_$_PasswordFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
