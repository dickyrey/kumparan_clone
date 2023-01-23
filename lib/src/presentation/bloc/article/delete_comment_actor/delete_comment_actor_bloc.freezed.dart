// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_comment_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeleteCommentActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String id, int userId) deletePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String id, int userId)? deletePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String id, int userId)? deletePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_DeletePressed value) deletePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_DeletePressed value)? deletePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_DeletePressed value)? deletePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteCommentActorEventCopyWith<$Res> {
  factory $DeleteCommentActorEventCopyWith(DeleteCommentActorEvent value,
          $Res Function(DeleteCommentActorEvent) then) =
      _$DeleteCommentActorEventCopyWithImpl<$Res, DeleteCommentActorEvent>;
}

/// @nodoc
class _$DeleteCommentActorEventCopyWithImpl<$Res,
        $Val extends DeleteCommentActorEvent>
    implements $DeleteCommentActorEventCopyWith<$Res> {
  _$DeleteCommentActorEventCopyWithImpl(this._value, this._then);

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
    extends _$DeleteCommentActorEventCopyWithImpl<$Res, _$_Init>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Init implements _Init {
  const _$_Init();

  @override
  String toString() {
    return 'DeleteCommentActorEvent.init()';
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
    required TResult Function(String id, int userId) deletePressed,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String id, int userId)? deletePressed,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String id, int userId)? deletePressed,
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
    required TResult Function(_DeletePressed value) deletePressed,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_DeletePressed value)? deletePressed,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_DeletePressed value)? deletePressed,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements DeleteCommentActorEvent {
  const factory _Init() = _$_Init;
}

/// @nodoc
abstract class _$$_DeletePressedCopyWith<$Res> {
  factory _$$_DeletePressedCopyWith(
          _$_DeletePressed value, $Res Function(_$_DeletePressed) then) =
      __$$_DeletePressedCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, int userId});
}

/// @nodoc
class __$$_DeletePressedCopyWithImpl<$Res>
    extends _$DeleteCommentActorEventCopyWithImpl<$Res, _$_DeletePressed>
    implements _$$_DeletePressedCopyWith<$Res> {
  __$$_DeletePressedCopyWithImpl(
      _$_DeletePressed _value, $Res Function(_$_DeletePressed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
  }) {
    return _then(_$_DeletePressed(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeletePressed implements _DeletePressed {
  const _$_DeletePressed({required this.id, required this.userId});

  @override
  final String id;
  @override
  final int userId;

  @override
  String toString() {
    return 'DeleteCommentActorEvent.deletePressed(id: $id, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeletePressed &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeletePressedCopyWith<_$_DeletePressed> get copyWith =>
      __$$_DeletePressedCopyWithImpl<_$_DeletePressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String id, int userId) deletePressed,
  }) {
    return deletePressed(id, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String id, int userId)? deletePressed,
  }) {
    return deletePressed?.call(id, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String id, int userId)? deletePressed,
    required TResult orElse(),
  }) {
    if (deletePressed != null) {
      return deletePressed(id, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_DeletePressed value) deletePressed,
  }) {
    return deletePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_DeletePressed value)? deletePressed,
  }) {
    return deletePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_DeletePressed value)? deletePressed,
    required TResult orElse(),
  }) {
    if (deletePressed != null) {
      return deletePressed(this);
    }
    return orElse();
  }
}

abstract class _DeletePressed implements DeleteCommentActorEvent {
  const factory _DeletePressed(
      {required final String id, required final int userId}) = _$_DeletePressed;

  String get id;
  int get userId;
  @JsonKey(ignore: true)
  _$$_DeletePressedCopyWith<_$_DeletePressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeleteCommentActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleteInProgress,
    required TResult Function(String msg) deleteInFailure,
    required TResult Function() deleteInSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? deleteInProgress,
    TResult? Function(String msg)? deleteInFailure,
    TResult? Function()? deleteInSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteInProgress,
    TResult Function(String msg)? deleteInFailure,
    TResult Function()? deleteInSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DeleteInProgress value) deleteInProgress,
    required TResult Function(_DeleteInFailure value) deleteInFailure,
    required TResult Function(_DeleteInSuccess value) deleteInSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DeleteInProgress value)? deleteInProgress,
    TResult? Function(_DeleteInFailure value)? deleteInFailure,
    TResult? Function(_DeleteInSuccess value)? deleteInSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DeleteInProgress value)? deleteInProgress,
    TResult Function(_DeleteInFailure value)? deleteInFailure,
    TResult Function(_DeleteInSuccess value)? deleteInSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteCommentActorStateCopyWith<$Res> {
  factory $DeleteCommentActorStateCopyWith(DeleteCommentActorState value,
          $Res Function(DeleteCommentActorState) then) =
      _$DeleteCommentActorStateCopyWithImpl<$Res, DeleteCommentActorState>;
}

/// @nodoc
class _$DeleteCommentActorStateCopyWithImpl<$Res,
        $Val extends DeleteCommentActorState>
    implements $DeleteCommentActorStateCopyWith<$Res> {
  _$DeleteCommentActorStateCopyWithImpl(this._value, this._then);

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
    extends _$DeleteCommentActorStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'DeleteCommentActorState.initial()';
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
    required TResult Function() deleteInProgress,
    required TResult Function(String msg) deleteInFailure,
    required TResult Function() deleteInSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? deleteInProgress,
    TResult? Function(String msg)? deleteInFailure,
    TResult? Function()? deleteInSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteInProgress,
    TResult Function(String msg)? deleteInFailure,
    TResult Function()? deleteInSuccess,
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
    required TResult Function(_DeleteInProgress value) deleteInProgress,
    required TResult Function(_DeleteInFailure value) deleteInFailure,
    required TResult Function(_DeleteInSuccess value) deleteInSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DeleteInProgress value)? deleteInProgress,
    TResult? Function(_DeleteInFailure value)? deleteInFailure,
    TResult? Function(_DeleteInSuccess value)? deleteInSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DeleteInProgress value)? deleteInProgress,
    TResult Function(_DeleteInFailure value)? deleteInFailure,
    TResult Function(_DeleteInSuccess value)? deleteInSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DeleteCommentActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_DeleteInProgressCopyWith<$Res> {
  factory _$$_DeleteInProgressCopyWith(
          _$_DeleteInProgress value, $Res Function(_$_DeleteInProgress) then) =
      __$$_DeleteInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeleteInProgressCopyWithImpl<$Res>
    extends _$DeleteCommentActorStateCopyWithImpl<$Res, _$_DeleteInProgress>
    implements _$$_DeleteInProgressCopyWith<$Res> {
  __$$_DeleteInProgressCopyWithImpl(
      _$_DeleteInProgress _value, $Res Function(_$_DeleteInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DeleteInProgress implements _DeleteInProgress {
  const _$_DeleteInProgress();

  @override
  String toString() {
    return 'DeleteCommentActorState.deleteInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeleteInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleteInProgress,
    required TResult Function(String msg) deleteInFailure,
    required TResult Function() deleteInSuccess,
  }) {
    return deleteInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? deleteInProgress,
    TResult? Function(String msg)? deleteInFailure,
    TResult? Function()? deleteInSuccess,
  }) {
    return deleteInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteInProgress,
    TResult Function(String msg)? deleteInFailure,
    TResult Function()? deleteInSuccess,
    required TResult orElse(),
  }) {
    if (deleteInProgress != null) {
      return deleteInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DeleteInProgress value) deleteInProgress,
    required TResult Function(_DeleteInFailure value) deleteInFailure,
    required TResult Function(_DeleteInSuccess value) deleteInSuccess,
  }) {
    return deleteInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DeleteInProgress value)? deleteInProgress,
    TResult? Function(_DeleteInFailure value)? deleteInFailure,
    TResult? Function(_DeleteInSuccess value)? deleteInSuccess,
  }) {
    return deleteInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DeleteInProgress value)? deleteInProgress,
    TResult Function(_DeleteInFailure value)? deleteInFailure,
    TResult Function(_DeleteInSuccess value)? deleteInSuccess,
    required TResult orElse(),
  }) {
    if (deleteInProgress != null) {
      return deleteInProgress(this);
    }
    return orElse();
  }
}

abstract class _DeleteInProgress implements DeleteCommentActorState {
  const factory _DeleteInProgress() = _$_DeleteInProgress;
}

/// @nodoc
abstract class _$$_DeleteInFailureCopyWith<$Res> {
  factory _$$_DeleteInFailureCopyWith(
          _$_DeleteInFailure value, $Res Function(_$_DeleteInFailure) then) =
      __$$_DeleteInFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$_DeleteInFailureCopyWithImpl<$Res>
    extends _$DeleteCommentActorStateCopyWithImpl<$Res, _$_DeleteInFailure>
    implements _$$_DeleteInFailureCopyWith<$Res> {
  __$$_DeleteInFailureCopyWithImpl(
      _$_DeleteInFailure _value, $Res Function(_$_DeleteInFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$_DeleteInFailure(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteInFailure implements _DeleteInFailure {
  const _$_DeleteInFailure(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'DeleteCommentActorState.deleteInFailure(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteInFailure &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteInFailureCopyWith<_$_DeleteInFailure> get copyWith =>
      __$$_DeleteInFailureCopyWithImpl<_$_DeleteInFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleteInProgress,
    required TResult Function(String msg) deleteInFailure,
    required TResult Function() deleteInSuccess,
  }) {
    return deleteInFailure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? deleteInProgress,
    TResult? Function(String msg)? deleteInFailure,
    TResult? Function()? deleteInSuccess,
  }) {
    return deleteInFailure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteInProgress,
    TResult Function(String msg)? deleteInFailure,
    TResult Function()? deleteInSuccess,
    required TResult orElse(),
  }) {
    if (deleteInFailure != null) {
      return deleteInFailure(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DeleteInProgress value) deleteInProgress,
    required TResult Function(_DeleteInFailure value) deleteInFailure,
    required TResult Function(_DeleteInSuccess value) deleteInSuccess,
  }) {
    return deleteInFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DeleteInProgress value)? deleteInProgress,
    TResult? Function(_DeleteInFailure value)? deleteInFailure,
    TResult? Function(_DeleteInSuccess value)? deleteInSuccess,
  }) {
    return deleteInFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DeleteInProgress value)? deleteInProgress,
    TResult Function(_DeleteInFailure value)? deleteInFailure,
    TResult Function(_DeleteInSuccess value)? deleteInSuccess,
    required TResult orElse(),
  }) {
    if (deleteInFailure != null) {
      return deleteInFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteInFailure implements DeleteCommentActorState {
  const factory _DeleteInFailure(final String msg) = _$_DeleteInFailure;

  String get msg;
  @JsonKey(ignore: true)
  _$$_DeleteInFailureCopyWith<_$_DeleteInFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteInSuccessCopyWith<$Res> {
  factory _$$_DeleteInSuccessCopyWith(
          _$_DeleteInSuccess value, $Res Function(_$_DeleteInSuccess) then) =
      __$$_DeleteInSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeleteInSuccessCopyWithImpl<$Res>
    extends _$DeleteCommentActorStateCopyWithImpl<$Res, _$_DeleteInSuccess>
    implements _$$_DeleteInSuccessCopyWith<$Res> {
  __$$_DeleteInSuccessCopyWithImpl(
      _$_DeleteInSuccess _value, $Res Function(_$_DeleteInSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DeleteInSuccess implements _DeleteInSuccess {
  const _$_DeleteInSuccess();

  @override
  String toString() {
    return 'DeleteCommentActorState.deleteInSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeleteInSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleteInProgress,
    required TResult Function(String msg) deleteInFailure,
    required TResult Function() deleteInSuccess,
  }) {
    return deleteInSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? deleteInProgress,
    TResult? Function(String msg)? deleteInFailure,
    TResult? Function()? deleteInSuccess,
  }) {
    return deleteInSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteInProgress,
    TResult Function(String msg)? deleteInFailure,
    TResult Function()? deleteInSuccess,
    required TResult orElse(),
  }) {
    if (deleteInSuccess != null) {
      return deleteInSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DeleteInProgress value) deleteInProgress,
    required TResult Function(_DeleteInFailure value) deleteInFailure,
    required TResult Function(_DeleteInSuccess value) deleteInSuccess,
  }) {
    return deleteInSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DeleteInProgress value)? deleteInProgress,
    TResult? Function(_DeleteInFailure value)? deleteInFailure,
    TResult? Function(_DeleteInSuccess value)? deleteInSuccess,
  }) {
    return deleteInSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DeleteInProgress value)? deleteInProgress,
    TResult Function(_DeleteInFailure value)? deleteInFailure,
    TResult Function(_DeleteInSuccess value)? deleteInSuccess,
    required TResult orElse(),
  }) {
    if (deleteInSuccess != null) {
      return deleteInSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteInSuccess implements DeleteCommentActorState {
  const factory _DeleteInSuccess() = _$_DeleteInSuccess;
}
