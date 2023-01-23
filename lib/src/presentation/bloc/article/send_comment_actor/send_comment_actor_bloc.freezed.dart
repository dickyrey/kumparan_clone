// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_comment_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SendCommentActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String id, String comment) sendComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String id, String comment)? sendComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String id, String comment)? sendComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SendComment value) sendComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SendComment value)? sendComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendComment value)? sendComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendCommentActorEventCopyWith<$Res> {
  factory $SendCommentActorEventCopyWith(SendCommentActorEvent value,
          $Res Function(SendCommentActorEvent) then) =
      _$SendCommentActorEventCopyWithImpl<$Res, SendCommentActorEvent>;
}

/// @nodoc
class _$SendCommentActorEventCopyWithImpl<$Res,
        $Val extends SendCommentActorEvent>
    implements $SendCommentActorEventCopyWith<$Res> {
  _$SendCommentActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitCopyWith<$Res> {
  factory _$$_InitCopyWith(_$_Init value, $Res Function(_$_Init) then) =
      __$$_InitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitCopyWithImpl<$Res>
    extends _$SendCommentActorEventCopyWithImpl<$Res, _$_Init>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Init implements _Init {
  const _$_Init();

  @override
  String toString() {
    return 'SendCommentActorEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String id, String comment) sendComment,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String id, String comment)? sendComment,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String id, String comment)? sendComment,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SendComment value) sendComment,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SendComment value)? sendComment,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendComment value)? sendComment,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements SendCommentActorEvent {
  const factory _Init() = _$_Init;
}

/// @nodoc
abstract class _$$_SendCommentCopyWith<$Res> {
  factory _$$_SendCommentCopyWith(
          _$_SendComment value, $Res Function(_$_SendComment) then) =
      __$$_SendCommentCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String comment});
}

/// @nodoc
class __$$_SendCommentCopyWithImpl<$Res>
    extends _$SendCommentActorEventCopyWithImpl<$Res, _$_SendComment>
    implements _$$_SendCommentCopyWith<$Res> {
  __$$_SendCommentCopyWithImpl(
      _$_SendComment _value, $Res Function(_$_SendComment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? comment = null,
  }) {
    return _then(_$_SendComment(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendComment implements _SendComment {
  const _$_SendComment({required this.id, required this.comment});

  @override
  final String id;
  @override
  final String comment;

  @override
  String toString() {
    return 'SendCommentActorEvent.sendComment(id: $id, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendComment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendCommentCopyWith<_$_SendComment> get copyWith =>
      __$$_SendCommentCopyWithImpl<_$_SendComment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String id, String comment) sendComment,
  }) {
    return sendComment(id, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String id, String comment)? sendComment,
  }) {
    return sendComment?.call(id, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String id, String comment)? sendComment,
    required TResult orElse(),
  }) {
    if (sendComment != null) {
      return sendComment(id, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SendComment value) sendComment,
  }) {
    return sendComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SendComment value)? sendComment,
  }) {
    return sendComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendComment value)? sendComment,
    required TResult orElse(),
  }) {
    if (sendComment != null) {
      return sendComment(this);
    }
    return orElse();
  }
}

abstract class _SendComment implements SendCommentActorEvent {
  const factory _SendComment(
      {required final String id,
      required final String comment}) = _$_SendComment;

  String get id;
  String get comment;
  @JsonKey(ignore: true)
  _$$_SendCommentCopyWith<_$_SendComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SendCommentActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendProgress,
    required TResult Function(String msg) sendFailure,
    required TResult Function() sendSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendProgress,
    TResult? Function(String msg)? sendFailure,
    TResult? Function()? sendSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendProgress,
    TResult Function(String msg)? sendFailure,
    TResult Function()? sendSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SendProgress value) sendProgress,
    required TResult Function(_SendFailure value) sendFailure,
    required TResult Function(_SendSuccess value) sendSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendProgress value)? sendProgress,
    TResult? Function(_SendFailure value)? sendFailure,
    TResult? Function(_SendSuccess value)? sendSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendProgress value)? sendProgress,
    TResult Function(_SendFailure value)? sendFailure,
    TResult Function(_SendSuccess value)? sendSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendCommentActorStateCopyWith<$Res> {
  factory $SendCommentActorStateCopyWith(SendCommentActorState value,
          $Res Function(SendCommentActorState) then) =
      _$SendCommentActorStateCopyWithImpl<$Res, SendCommentActorState>;
}

/// @nodoc
class _$SendCommentActorStateCopyWithImpl<$Res,
        $Val extends SendCommentActorState>
    implements $SendCommentActorStateCopyWith<$Res> {
  _$SendCommentActorStateCopyWithImpl(this._value, this._then);

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
    extends _$SendCommentActorStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SendCommentActorState.initial()';
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
    required TResult Function() sendProgress,
    required TResult Function(String msg) sendFailure,
    required TResult Function() sendSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendProgress,
    TResult? Function(String msg)? sendFailure,
    TResult? Function()? sendSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendProgress,
    TResult Function(String msg)? sendFailure,
    TResult Function()? sendSuccess,
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
    required TResult Function(_SendProgress value) sendProgress,
    required TResult Function(_SendFailure value) sendFailure,
    required TResult Function(_SendSuccess value) sendSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendProgress value)? sendProgress,
    TResult? Function(_SendFailure value)? sendFailure,
    TResult? Function(_SendSuccess value)? sendSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendProgress value)? sendProgress,
    TResult Function(_SendFailure value)? sendFailure,
    TResult Function(_SendSuccess value)? sendSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SendCommentActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_SendProgressCopyWith<$Res> {
  factory _$$_SendProgressCopyWith(
          _$_SendProgress value, $Res Function(_$_SendProgress) then) =
      __$$_SendProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SendProgressCopyWithImpl<$Res>
    extends _$SendCommentActorStateCopyWithImpl<$Res, _$_SendProgress>
    implements _$$_SendProgressCopyWith<$Res> {
  __$$_SendProgressCopyWithImpl(
      _$_SendProgress _value, $Res Function(_$_SendProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SendProgress implements _SendProgress {
  const _$_SendProgress();

  @override
  String toString() {
    return 'SendCommentActorState.sendProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SendProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendProgress,
    required TResult Function(String msg) sendFailure,
    required TResult Function() sendSuccess,
  }) {
    return sendProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendProgress,
    TResult? Function(String msg)? sendFailure,
    TResult? Function()? sendSuccess,
  }) {
    return sendProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendProgress,
    TResult Function(String msg)? sendFailure,
    TResult Function()? sendSuccess,
    required TResult orElse(),
  }) {
    if (sendProgress != null) {
      return sendProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SendProgress value) sendProgress,
    required TResult Function(_SendFailure value) sendFailure,
    required TResult Function(_SendSuccess value) sendSuccess,
  }) {
    return sendProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendProgress value)? sendProgress,
    TResult? Function(_SendFailure value)? sendFailure,
    TResult? Function(_SendSuccess value)? sendSuccess,
  }) {
    return sendProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendProgress value)? sendProgress,
    TResult Function(_SendFailure value)? sendFailure,
    TResult Function(_SendSuccess value)? sendSuccess,
    required TResult orElse(),
  }) {
    if (sendProgress != null) {
      return sendProgress(this);
    }
    return orElse();
  }
}

abstract class _SendProgress implements SendCommentActorState {
  const factory _SendProgress() = _$_SendProgress;
}

/// @nodoc
abstract class _$$_SendFailureCopyWith<$Res> {
  factory _$$_SendFailureCopyWith(
          _$_SendFailure value, $Res Function(_$_SendFailure) then) =
      __$$_SendFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$_SendFailureCopyWithImpl<$Res>
    extends _$SendCommentActorStateCopyWithImpl<$Res, _$_SendFailure>
    implements _$$_SendFailureCopyWith<$Res> {
  __$$_SendFailureCopyWithImpl(
      _$_SendFailure _value, $Res Function(_$_SendFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$_SendFailure(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendFailure implements _SendFailure {
  const _$_SendFailure(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'SendCommentActorState.sendFailure(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendFailure &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendFailureCopyWith<_$_SendFailure> get copyWith =>
      __$$_SendFailureCopyWithImpl<_$_SendFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendProgress,
    required TResult Function(String msg) sendFailure,
    required TResult Function() sendSuccess,
  }) {
    return sendFailure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendProgress,
    TResult? Function(String msg)? sendFailure,
    TResult? Function()? sendSuccess,
  }) {
    return sendFailure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendProgress,
    TResult Function(String msg)? sendFailure,
    TResult Function()? sendSuccess,
    required TResult orElse(),
  }) {
    if (sendFailure != null) {
      return sendFailure(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SendProgress value) sendProgress,
    required TResult Function(_SendFailure value) sendFailure,
    required TResult Function(_SendSuccess value) sendSuccess,
  }) {
    return sendFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendProgress value)? sendProgress,
    TResult? Function(_SendFailure value)? sendFailure,
    TResult? Function(_SendSuccess value)? sendSuccess,
  }) {
    return sendFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendProgress value)? sendProgress,
    TResult Function(_SendFailure value)? sendFailure,
    TResult Function(_SendSuccess value)? sendSuccess,
    required TResult orElse(),
  }) {
    if (sendFailure != null) {
      return sendFailure(this);
    }
    return orElse();
  }
}

abstract class _SendFailure implements SendCommentActorState {
  const factory _SendFailure(final String msg) = _$_SendFailure;

  String get msg;
  @JsonKey(ignore: true)
  _$$_SendFailureCopyWith<_$_SendFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SendSuccessCopyWith<$Res> {
  factory _$$_SendSuccessCopyWith(
          _$_SendSuccess value, $Res Function(_$_SendSuccess) then) =
      __$$_SendSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SendSuccessCopyWithImpl<$Res>
    extends _$SendCommentActorStateCopyWithImpl<$Res, _$_SendSuccess>
    implements _$$_SendSuccessCopyWith<$Res> {
  __$$_SendSuccessCopyWithImpl(
      _$_SendSuccess _value, $Res Function(_$_SendSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SendSuccess implements _SendSuccess {
  const _$_SendSuccess();

  @override
  String toString() {
    return 'SendCommentActorState.sendSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SendSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendProgress,
    required TResult Function(String msg) sendFailure,
    required TResult Function() sendSuccess,
  }) {
    return sendSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendProgress,
    TResult? Function(String msg)? sendFailure,
    TResult? Function()? sendSuccess,
  }) {
    return sendSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendProgress,
    TResult Function(String msg)? sendFailure,
    TResult Function()? sendSuccess,
    required TResult orElse(),
  }) {
    if (sendSuccess != null) {
      return sendSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SendProgress value) sendProgress,
    required TResult Function(_SendFailure value) sendFailure,
    required TResult Function(_SendSuccess value) sendSuccess,
  }) {
    return sendSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendProgress value)? sendProgress,
    TResult? Function(_SendFailure value)? sendFailure,
    TResult? Function(_SendSuccess value)? sendSuccess,
  }) {
    return sendSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendProgress value)? sendProgress,
    TResult Function(_SendFailure value)? sendFailure,
    TResult Function(_SendSuccess value)? sendSuccess,
    required TResult orElse(),
  }) {
    if (sendSuccess != null) {
      return sendSuccess(this);
    }
    return orElse();
  }
}

abstract class _SendSuccess implements SendCommentActorState {
  const factory _SendSuccess() = _$_SendSuccess;
}
