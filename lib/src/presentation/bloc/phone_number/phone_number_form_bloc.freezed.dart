// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone_number_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhoneNumberFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String phoneNumber) phoneNumberOnChanged,
    required TResult Function() sendPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String phoneNumber)? phoneNumberOnChanged,
    TResult? Function()? sendPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber)? phoneNumberOnChanged,
    TResult Function()? sendPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_SendPressed value) sendPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_SendPressed value)? sendPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_SendPressed value)? sendPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneNumberFormEventCopyWith<$Res> {
  factory $PhoneNumberFormEventCopyWith(PhoneNumberFormEvent value,
          $Res Function(PhoneNumberFormEvent) then) =
      _$PhoneNumberFormEventCopyWithImpl<$Res, PhoneNumberFormEvent>;
}

/// @nodoc
class _$PhoneNumberFormEventCopyWithImpl<$Res,
        $Val extends PhoneNumberFormEvent>
    implements $PhoneNumberFormEventCopyWith<$Res> {
  _$PhoneNumberFormEventCopyWithImpl(this._value, this._then);

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
    extends _$PhoneNumberFormEventCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PhoneNumberFormEvent.initial()';
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
    required TResult Function(String phoneNumber) phoneNumberOnChanged,
    required TResult Function() sendPressed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String phoneNumber)? phoneNumberOnChanged,
    TResult? Function()? sendPressed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber)? phoneNumberOnChanged,
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
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_SendPressed value) sendPressed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_SendPressed value)? sendPressed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_SendPressed value)? sendPressed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PhoneNumberFormEvent {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_PhoneNumberOnChangedCopyWith<$Res> {
  factory _$$_PhoneNumberOnChangedCopyWith(_$_PhoneNumberOnChanged value,
          $Res Function(_$_PhoneNumberOnChanged) then) =
      __$$_PhoneNumberOnChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$_PhoneNumberOnChangedCopyWithImpl<$Res>
    extends _$PhoneNumberFormEventCopyWithImpl<$Res, _$_PhoneNumberOnChanged>
    implements _$$_PhoneNumberOnChangedCopyWith<$Res> {
  __$$_PhoneNumberOnChangedCopyWithImpl(_$_PhoneNumberOnChanged _value,
      $Res Function(_$_PhoneNumberOnChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$_PhoneNumberOnChanged(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneNumberOnChanged implements _PhoneNumberOnChanged {
  const _$_PhoneNumberOnChanged(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'PhoneNumberFormEvent.phoneNumberOnChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneNumberOnChanged &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneNumberOnChangedCopyWith<_$_PhoneNumberOnChanged> get copyWith =>
      __$$_PhoneNumberOnChangedCopyWithImpl<_$_PhoneNumberOnChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String phoneNumber) phoneNumberOnChanged,
    required TResult Function() sendPressed,
  }) {
    return phoneNumberOnChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String phoneNumber)? phoneNumberOnChanged,
    TResult? Function()? sendPressed,
  }) {
    return phoneNumberOnChanged?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber)? phoneNumberOnChanged,
    TResult Function()? sendPressed,
    required TResult orElse(),
  }) {
    if (phoneNumberOnChanged != null) {
      return phoneNumberOnChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_SendPressed value) sendPressed,
  }) {
    return phoneNumberOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_SendPressed value)? sendPressed,
  }) {
    return phoneNumberOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_SendPressed value)? sendPressed,
    required TResult orElse(),
  }) {
    if (phoneNumberOnChanged != null) {
      return phoneNumberOnChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberOnChanged implements PhoneNumberFormEvent {
  const factory _PhoneNumberOnChanged(final String phoneNumber) =
      _$_PhoneNumberOnChanged;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$_PhoneNumberOnChangedCopyWith<_$_PhoneNumberOnChanged> get copyWith =>
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
    extends _$PhoneNumberFormEventCopyWithImpl<$Res, _$_SendPressed>
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
    return 'PhoneNumberFormEvent.sendPressed()';
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
    required TResult Function(String phoneNumber) phoneNumberOnChanged,
    required TResult Function() sendPressed,
  }) {
    return sendPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String phoneNumber)? phoneNumberOnChanged,
    TResult? Function()? sendPressed,
  }) {
    return sendPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber)? phoneNumberOnChanged,
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
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_SendPressed value) sendPressed,
  }) {
    return sendPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_SendPressed value)? sendPressed,
  }) {
    return sendPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_SendPressed value)? sendPressed,
    required TResult orElse(),
  }) {
    if (sendPressed != null) {
      return sendPressed(this);
    }
    return orElse();
  }
}

abstract class _SendPressed implements PhoneNumberFormEvent {
  const factory _SendPressed() = _$_SendPressed;
}

/// @nodoc
mixin _$PhoneNumberFormState {
  RequestState get result => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isShowErrorMessages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoneNumberFormStateCopyWith<PhoneNumberFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneNumberFormStateCopyWith<$Res> {
  factory $PhoneNumberFormStateCopyWith(PhoneNumberFormState value,
          $Res Function(PhoneNumberFormState) then) =
      _$PhoneNumberFormStateCopyWithImpl<$Res, PhoneNumberFormState>;
  @useResult
  $Res call(
      {RequestState result,
      String phoneNumber,
      bool isSubmitting,
      bool isShowErrorMessages});
}

/// @nodoc
class _$PhoneNumberFormStateCopyWithImpl<$Res,
        $Val extends PhoneNumberFormState>
    implements $PhoneNumberFormStateCopyWith<$Res> {
  _$PhoneNumberFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? phoneNumber = null,
    Object? isSubmitting = null,
    Object? isShowErrorMessages = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as RequestState,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_PhoneNumberFormStateCopyWith<$Res>
    implements $PhoneNumberFormStateCopyWith<$Res> {
  factory _$$_PhoneNumberFormStateCopyWith(_$_PhoneNumberFormState value,
          $Res Function(_$_PhoneNumberFormState) then) =
      __$$_PhoneNumberFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState result,
      String phoneNumber,
      bool isSubmitting,
      bool isShowErrorMessages});
}

/// @nodoc
class __$$_PhoneNumberFormStateCopyWithImpl<$Res>
    extends _$PhoneNumberFormStateCopyWithImpl<$Res, _$_PhoneNumberFormState>
    implements _$$_PhoneNumberFormStateCopyWith<$Res> {
  __$$_PhoneNumberFormStateCopyWithImpl(_$_PhoneNumberFormState _value,
      $Res Function(_$_PhoneNumberFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? phoneNumber = null,
    Object? isSubmitting = null,
    Object? isShowErrorMessages = null,
  }) {
    return _then(_$_PhoneNumberFormState(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as RequestState,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
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

class _$_PhoneNumberFormState implements _PhoneNumberFormState {
  const _$_PhoneNumberFormState(
      {required this.result,
      required this.phoneNumber,
      required this.isSubmitting,
      required this.isShowErrorMessages});

  @override
  final RequestState result;
  @override
  final String phoneNumber;
  @override
  final bool isSubmitting;
  @override
  final bool isShowErrorMessages;

  @override
  String toString() {
    return 'PhoneNumberFormState(result: $result, phoneNumber: $phoneNumber, isSubmitting: $isSubmitting, isShowErrorMessages: $isShowErrorMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneNumberFormState &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isShowErrorMessages, isShowErrorMessages) ||
                other.isShowErrorMessages == isShowErrorMessages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, result, phoneNumber, isSubmitting, isShowErrorMessages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneNumberFormStateCopyWith<_$_PhoneNumberFormState> get copyWith =>
      __$$_PhoneNumberFormStateCopyWithImpl<_$_PhoneNumberFormState>(
          this, _$identity);
}

abstract class _PhoneNumberFormState implements PhoneNumberFormState {
  const factory _PhoneNumberFormState(
      {required final RequestState result,
      required final String phoneNumber,
      required final bool isSubmitting,
      required final bool isShowErrorMessages}) = _$_PhoneNumberFormState;

  @override
  RequestState get result;
  @override
  String get phoneNumber;
  @override
  bool get isSubmitting;
  @override
  bool get isShowErrorMessages;
  @override
  @JsonKey(ignore: true)
  _$$_PhoneNumberFormStateCopyWith<_$_PhoneNumberFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
