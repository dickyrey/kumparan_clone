// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInPressed,
    required TResult Function(String email) emailOnChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInPressed,
    TResult? Function(String email)? emailOnChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInPressed,
    TResult Function(String email)? emailOnChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignInPressed value) signInPressed,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignInPressed value)? signInPressed,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignInPressed value)? signInPressed,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFormEventCopyWith<$Res> {
  factory $RegisterFormEventCopyWith(
          RegisterFormEvent value, $Res Function(RegisterFormEvent) then) =
      _$RegisterFormEventCopyWithImpl<$Res, RegisterFormEvent>;
}

/// @nodoc
class _$RegisterFormEventCopyWithImpl<$Res, $Val extends RegisterFormEvent>
    implements $RegisterFormEventCopyWith<$Res> {
  _$RegisterFormEventCopyWithImpl(this._value, this._then);

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
    extends _$RegisterFormEventCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'RegisterFormEvent.initial()';
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
    required TResult Function() signInPressed,
    required TResult Function(String email) emailOnChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInPressed,
    TResult? Function(String email)? emailOnChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInPressed,
    TResult Function(String email)? emailOnChanged,
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
    required TResult Function(_SignInPressed value) signInPressed,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignInPressed value)? signInPressed,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignInPressed value)? signInPressed,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RegisterFormEvent {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_SignInPressedCopyWith<$Res> {
  factory _$$_SignInPressedCopyWith(
          _$_SignInPressed value, $Res Function(_$_SignInPressed) then) =
      __$$_SignInPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInPressedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$_SignInPressed>
    implements _$$_SignInPressedCopyWith<$Res> {
  __$$_SignInPressedCopyWithImpl(
      _$_SignInPressed _value, $Res Function(_$_SignInPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignInPressed implements _SignInPressed {
  const _$_SignInPressed();

  @override
  String toString() {
    return 'RegisterFormEvent.signInPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignInPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInPressed,
    required TResult Function(String email) emailOnChanged,
  }) {
    return signInPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInPressed,
    TResult? Function(String email)? emailOnChanged,
  }) {
    return signInPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInPressed,
    TResult Function(String email)? emailOnChanged,
    required TResult orElse(),
  }) {
    if (signInPressed != null) {
      return signInPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignInPressed value) signInPressed,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
  }) {
    return signInPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignInPressed value)? signInPressed,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
  }) {
    return signInPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignInPressed value)? signInPressed,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    required TResult orElse(),
  }) {
    if (signInPressed != null) {
      return signInPressed(this);
    }
    return orElse();
  }
}

abstract class _SignInPressed implements RegisterFormEvent {
  const factory _SignInPressed() = _$_SignInPressed;
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
    extends _$RegisterFormEventCopyWithImpl<$Res, _$_EmailOnChanged>
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
    return 'RegisterFormEvent.emailOnChanged(email: $email)';
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
    required TResult Function() signInPressed,
    required TResult Function(String email) emailOnChanged,
  }) {
    return emailOnChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInPressed,
    TResult? Function(String email)? emailOnChanged,
  }) {
    return emailOnChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInPressed,
    TResult Function(String email)? emailOnChanged,
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
    required TResult Function(_SignInPressed value) signInPressed,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
  }) {
    return emailOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignInPressed value)? signInPressed,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
  }) {
    return emailOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignInPressed value)? signInPressed,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    required TResult orElse(),
  }) {
    if (emailOnChanged != null) {
      return emailOnChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailOnChanged implements RegisterFormEvent {
  const factory _EmailOnChanged(final String email) = _$_EmailOnChanged;

  String get email;
  @JsonKey(ignore: true)
  _$$_EmailOnChangedCopyWith<_$_EmailOnChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterFormState {
  RequestState get result => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isShowErrorMessages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterFormStateCopyWith<RegisterFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFormStateCopyWith<$Res> {
  factory $RegisterFormStateCopyWith(
          RegisterFormState value, $Res Function(RegisterFormState) then) =
      _$RegisterFormStateCopyWithImpl<$Res, RegisterFormState>;
  @useResult
  $Res call(
      {RequestState result,
      String email,
      bool isSubmitting,
      bool isShowErrorMessages});
}

/// @nodoc
class _$RegisterFormStateCopyWithImpl<$Res, $Val extends RegisterFormState>
    implements $RegisterFormStateCopyWith<$Res> {
  _$RegisterFormStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_RegisterFormStateCopyWith<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  factory _$$_RegisterFormStateCopyWith(_$_RegisterFormState value,
          $Res Function(_$_RegisterFormState) then) =
      __$$_RegisterFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState result,
      String email,
      bool isSubmitting,
      bool isShowErrorMessages});
}

/// @nodoc
class __$$_RegisterFormStateCopyWithImpl<$Res>
    extends _$RegisterFormStateCopyWithImpl<$Res, _$_RegisterFormState>
    implements _$$_RegisterFormStateCopyWith<$Res> {
  __$$_RegisterFormStateCopyWithImpl(
      _$_RegisterFormState _value, $Res Function(_$_RegisterFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? email = null,
    Object? isSubmitting = null,
    Object? isShowErrorMessages = null,
  }) {
    return _then(_$_RegisterFormState(
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

class _$_RegisterFormState implements _RegisterFormState {
  const _$_RegisterFormState(
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
    return 'RegisterFormState(result: $result, email: $email, isSubmitting: $isSubmitting, isShowErrorMessages: $isShowErrorMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterFormState &&
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
  _$$_RegisterFormStateCopyWith<_$_RegisterFormState> get copyWith =>
      __$$_RegisterFormStateCopyWithImpl<_$_RegisterFormState>(
          this, _$identity);
}

abstract class _RegisterFormState implements RegisterFormState {
  const factory _RegisterFormState(
      {required final RequestState result,
      required final String email,
      required final bool isSubmitting,
      required final bool isShowErrorMessages}) = _$_RegisterFormState;

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
  _$$_RegisterFormStateCopyWith<_$_RegisterFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
