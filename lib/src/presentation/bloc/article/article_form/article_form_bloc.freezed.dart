// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticleFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ArticleDetail article) initialize,
    required TResult Function(String val) titleOnChanged,
    required TResult Function(String val) contentOnChanged,
    required TResult Function(ImageSource source) pickImage,
    required TResult Function() createArticlePressed,
    required TResult Function(List<Category> categories) fetchCategoryList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ArticleDetail article)? initialize,
    TResult? Function(String val)? titleOnChanged,
    TResult? Function(String val)? contentOnChanged,
    TResult? Function(ImageSource source)? pickImage,
    TResult? Function()? createArticlePressed,
    TResult? Function(List<Category> categories)? fetchCategoryList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ArticleDetail article)? initialize,
    TResult Function(String val)? titleOnChanged,
    TResult Function(String val)? contentOnChanged,
    TResult Function(ImageSource source)? pickImage,
    TResult Function()? createArticlePressed,
    TResult Function(List<Category> categories)? fetchCategoryList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleOnChanged value) titleOnChanged,
    required TResult Function(_ContentOnChanged value) contentOnChanged,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_CreateArticlePressed value) createArticlePressed,
    required TResult Function(_FetchCategoryList value) fetchCategoryList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_TitleOnChanged value)? titleOnChanged,
    TResult? Function(_ContentOnChanged value)? contentOnChanged,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_CreateArticlePressed value)? createArticlePressed,
    TResult? Function(_FetchCategoryList value)? fetchCategoryList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleOnChanged value)? titleOnChanged,
    TResult Function(_ContentOnChanged value)? contentOnChanged,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_CreateArticlePressed value)? createArticlePressed,
    TResult Function(_FetchCategoryList value)? fetchCategoryList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleFormEventCopyWith<$Res> {
  factory $ArticleFormEventCopyWith(
          ArticleFormEvent value, $Res Function(ArticleFormEvent) then) =
      _$ArticleFormEventCopyWithImpl<$Res, ArticleFormEvent>;
}

/// @nodoc
class _$ArticleFormEventCopyWithImpl<$Res, $Val extends ArticleFormEvent>
    implements $ArticleFormEventCopyWith<$Res> {
  _$ArticleFormEventCopyWithImpl(this._value, this._then);

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
    extends _$ArticleFormEventCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ArticleFormEvent.initial()';
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
    required TResult Function(ArticleDetail article) initialize,
    required TResult Function(String val) titleOnChanged,
    required TResult Function(String val) contentOnChanged,
    required TResult Function(ImageSource source) pickImage,
    required TResult Function() createArticlePressed,
    required TResult Function(List<Category> categories) fetchCategoryList,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ArticleDetail article)? initialize,
    TResult? Function(String val)? titleOnChanged,
    TResult? Function(String val)? contentOnChanged,
    TResult? Function(ImageSource source)? pickImage,
    TResult? Function()? createArticlePressed,
    TResult? Function(List<Category> categories)? fetchCategoryList,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ArticleDetail article)? initialize,
    TResult Function(String val)? titleOnChanged,
    TResult Function(String val)? contentOnChanged,
    TResult Function(ImageSource source)? pickImage,
    TResult Function()? createArticlePressed,
    TResult Function(List<Category> categories)? fetchCategoryList,
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
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleOnChanged value) titleOnChanged,
    required TResult Function(_ContentOnChanged value) contentOnChanged,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_CreateArticlePressed value) createArticlePressed,
    required TResult Function(_FetchCategoryList value) fetchCategoryList,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_TitleOnChanged value)? titleOnChanged,
    TResult? Function(_ContentOnChanged value)? contentOnChanged,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_CreateArticlePressed value)? createArticlePressed,
    TResult? Function(_FetchCategoryList value)? fetchCategoryList,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleOnChanged value)? titleOnChanged,
    TResult Function(_ContentOnChanged value)? contentOnChanged,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_CreateArticlePressed value)? createArticlePressed,
    TResult Function(_FetchCategoryList value)? fetchCategoryList,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ArticleFormEvent {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_InitializeCopyWith<$Res> {
  factory _$$_InitializeCopyWith(
          _$_Initialize value, $Res Function(_$_Initialize) then) =
      __$$_InitializeCopyWithImpl<$Res>;
  @useResult
  $Res call({ArticleDetail article});
}

/// @nodoc
class __$$_InitializeCopyWithImpl<$Res>
    extends _$ArticleFormEventCopyWithImpl<$Res, _$_Initialize>
    implements _$$_InitializeCopyWith<$Res> {
  __$$_InitializeCopyWithImpl(
      _$_Initialize _value, $Res Function(_$_Initialize) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? article = null,
  }) {
    return _then(_$_Initialize(
      null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as ArticleDetail,
    ));
  }
}

/// @nodoc

class _$_Initialize implements _Initialize {
  const _$_Initialize(this.article);

  @override
  final ArticleDetail article;

  @override
  String toString() {
    return 'ArticleFormEvent.initialize(article: $article)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialize &&
            (identical(other.article, article) || other.article == article));
  }

  @override
  int get hashCode => Object.hash(runtimeType, article);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializeCopyWith<_$_Initialize> get copyWith =>
      __$$_InitializeCopyWithImpl<_$_Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ArticleDetail article) initialize,
    required TResult Function(String val) titleOnChanged,
    required TResult Function(String val) contentOnChanged,
    required TResult Function(ImageSource source) pickImage,
    required TResult Function() createArticlePressed,
    required TResult Function(List<Category> categories) fetchCategoryList,
  }) {
    return initialize(article);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ArticleDetail article)? initialize,
    TResult? Function(String val)? titleOnChanged,
    TResult? Function(String val)? contentOnChanged,
    TResult? Function(ImageSource source)? pickImage,
    TResult? Function()? createArticlePressed,
    TResult? Function(List<Category> categories)? fetchCategoryList,
  }) {
    return initialize?.call(article);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ArticleDetail article)? initialize,
    TResult Function(String val)? titleOnChanged,
    TResult Function(String val)? contentOnChanged,
    TResult Function(ImageSource source)? pickImage,
    TResult Function()? createArticlePressed,
    TResult Function(List<Category> categories)? fetchCategoryList,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(article);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleOnChanged value) titleOnChanged,
    required TResult Function(_ContentOnChanged value) contentOnChanged,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_CreateArticlePressed value) createArticlePressed,
    required TResult Function(_FetchCategoryList value) fetchCategoryList,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_TitleOnChanged value)? titleOnChanged,
    TResult? Function(_ContentOnChanged value)? contentOnChanged,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_CreateArticlePressed value)? createArticlePressed,
    TResult? Function(_FetchCategoryList value)? fetchCategoryList,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleOnChanged value)? titleOnChanged,
    TResult Function(_ContentOnChanged value)? contentOnChanged,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_CreateArticlePressed value)? createArticlePressed,
    TResult Function(_FetchCategoryList value)? fetchCategoryList,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements ArticleFormEvent {
  const factory _Initialize(final ArticleDetail article) = _$_Initialize;

  ArticleDetail get article;
  @JsonKey(ignore: true)
  _$$_InitializeCopyWith<_$_Initialize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TitleOnChangedCopyWith<$Res> {
  factory _$$_TitleOnChangedCopyWith(
          _$_TitleOnChanged value, $Res Function(_$_TitleOnChanged) then) =
      __$$_TitleOnChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String val});
}

/// @nodoc
class __$$_TitleOnChangedCopyWithImpl<$Res>
    extends _$ArticleFormEventCopyWithImpl<$Res, _$_TitleOnChanged>
    implements _$$_TitleOnChangedCopyWith<$Res> {
  __$$_TitleOnChangedCopyWithImpl(
      _$_TitleOnChanged _value, $Res Function(_$_TitleOnChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? val = null,
  }) {
    return _then(_$_TitleOnChanged(
      null == val
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TitleOnChanged implements _TitleOnChanged {
  const _$_TitleOnChanged(this.val);

  @override
  final String val;

  @override
  String toString() {
    return 'ArticleFormEvent.titleOnChanged(val: $val)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TitleOnChanged &&
            (identical(other.val, val) || other.val == val));
  }

  @override
  int get hashCode => Object.hash(runtimeType, val);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TitleOnChangedCopyWith<_$_TitleOnChanged> get copyWith =>
      __$$_TitleOnChangedCopyWithImpl<_$_TitleOnChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ArticleDetail article) initialize,
    required TResult Function(String val) titleOnChanged,
    required TResult Function(String val) contentOnChanged,
    required TResult Function(ImageSource source) pickImage,
    required TResult Function() createArticlePressed,
    required TResult Function(List<Category> categories) fetchCategoryList,
  }) {
    return titleOnChanged(val);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ArticleDetail article)? initialize,
    TResult? Function(String val)? titleOnChanged,
    TResult? Function(String val)? contentOnChanged,
    TResult? Function(ImageSource source)? pickImage,
    TResult? Function()? createArticlePressed,
    TResult? Function(List<Category> categories)? fetchCategoryList,
  }) {
    return titleOnChanged?.call(val);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ArticleDetail article)? initialize,
    TResult Function(String val)? titleOnChanged,
    TResult Function(String val)? contentOnChanged,
    TResult Function(ImageSource source)? pickImage,
    TResult Function()? createArticlePressed,
    TResult Function(List<Category> categories)? fetchCategoryList,
    required TResult orElse(),
  }) {
    if (titleOnChanged != null) {
      return titleOnChanged(val);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleOnChanged value) titleOnChanged,
    required TResult Function(_ContentOnChanged value) contentOnChanged,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_CreateArticlePressed value) createArticlePressed,
    required TResult Function(_FetchCategoryList value) fetchCategoryList,
  }) {
    return titleOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_TitleOnChanged value)? titleOnChanged,
    TResult? Function(_ContentOnChanged value)? contentOnChanged,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_CreateArticlePressed value)? createArticlePressed,
    TResult? Function(_FetchCategoryList value)? fetchCategoryList,
  }) {
    return titleOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleOnChanged value)? titleOnChanged,
    TResult Function(_ContentOnChanged value)? contentOnChanged,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_CreateArticlePressed value)? createArticlePressed,
    TResult Function(_FetchCategoryList value)? fetchCategoryList,
    required TResult orElse(),
  }) {
    if (titleOnChanged != null) {
      return titleOnChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleOnChanged implements ArticleFormEvent {
  const factory _TitleOnChanged(final String val) = _$_TitleOnChanged;

  String get val;
  @JsonKey(ignore: true)
  _$$_TitleOnChangedCopyWith<_$_TitleOnChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ContentOnChangedCopyWith<$Res> {
  factory _$$_ContentOnChangedCopyWith(
          _$_ContentOnChanged value, $Res Function(_$_ContentOnChanged) then) =
      __$$_ContentOnChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String val});
}

/// @nodoc
class __$$_ContentOnChangedCopyWithImpl<$Res>
    extends _$ArticleFormEventCopyWithImpl<$Res, _$_ContentOnChanged>
    implements _$$_ContentOnChangedCopyWith<$Res> {
  __$$_ContentOnChangedCopyWithImpl(
      _$_ContentOnChanged _value, $Res Function(_$_ContentOnChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? val = null,
  }) {
    return _then(_$_ContentOnChanged(
      null == val
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ContentOnChanged implements _ContentOnChanged {
  const _$_ContentOnChanged(this.val);

  @override
  final String val;

  @override
  String toString() {
    return 'ArticleFormEvent.contentOnChanged(val: $val)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContentOnChanged &&
            (identical(other.val, val) || other.val == val));
  }

  @override
  int get hashCode => Object.hash(runtimeType, val);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContentOnChangedCopyWith<_$_ContentOnChanged> get copyWith =>
      __$$_ContentOnChangedCopyWithImpl<_$_ContentOnChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ArticleDetail article) initialize,
    required TResult Function(String val) titleOnChanged,
    required TResult Function(String val) contentOnChanged,
    required TResult Function(ImageSource source) pickImage,
    required TResult Function() createArticlePressed,
    required TResult Function(List<Category> categories) fetchCategoryList,
  }) {
    return contentOnChanged(val);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ArticleDetail article)? initialize,
    TResult? Function(String val)? titleOnChanged,
    TResult? Function(String val)? contentOnChanged,
    TResult? Function(ImageSource source)? pickImage,
    TResult? Function()? createArticlePressed,
    TResult? Function(List<Category> categories)? fetchCategoryList,
  }) {
    return contentOnChanged?.call(val);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ArticleDetail article)? initialize,
    TResult Function(String val)? titleOnChanged,
    TResult Function(String val)? contentOnChanged,
    TResult Function(ImageSource source)? pickImage,
    TResult Function()? createArticlePressed,
    TResult Function(List<Category> categories)? fetchCategoryList,
    required TResult orElse(),
  }) {
    if (contentOnChanged != null) {
      return contentOnChanged(val);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleOnChanged value) titleOnChanged,
    required TResult Function(_ContentOnChanged value) contentOnChanged,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_CreateArticlePressed value) createArticlePressed,
    required TResult Function(_FetchCategoryList value) fetchCategoryList,
  }) {
    return contentOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_TitleOnChanged value)? titleOnChanged,
    TResult? Function(_ContentOnChanged value)? contentOnChanged,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_CreateArticlePressed value)? createArticlePressed,
    TResult? Function(_FetchCategoryList value)? fetchCategoryList,
  }) {
    return contentOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleOnChanged value)? titleOnChanged,
    TResult Function(_ContentOnChanged value)? contentOnChanged,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_CreateArticlePressed value)? createArticlePressed,
    TResult Function(_FetchCategoryList value)? fetchCategoryList,
    required TResult orElse(),
  }) {
    if (contentOnChanged != null) {
      return contentOnChanged(this);
    }
    return orElse();
  }
}

abstract class _ContentOnChanged implements ArticleFormEvent {
  const factory _ContentOnChanged(final String val) = _$_ContentOnChanged;

  String get val;
  @JsonKey(ignore: true)
  _$$_ContentOnChangedCopyWith<_$_ContentOnChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PickImageCopyWith<$Res> {
  factory _$$_PickImageCopyWith(
          _$_PickImage value, $Res Function(_$_PickImage) then) =
      __$$_PickImageCopyWithImpl<$Res>;
  @useResult
  $Res call({ImageSource source});
}

/// @nodoc
class __$$_PickImageCopyWithImpl<$Res>
    extends _$ArticleFormEventCopyWithImpl<$Res, _$_PickImage>
    implements _$$_PickImageCopyWith<$Res> {
  __$$_PickImageCopyWithImpl(
      _$_PickImage _value, $Res Function(_$_PickImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
  }) {
    return _then(_$_PickImage(
      null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ImageSource,
    ));
  }
}

/// @nodoc

class _$_PickImage implements _PickImage {
  const _$_PickImage(this.source);

  @override
  final ImageSource source;

  @override
  String toString() {
    return 'ArticleFormEvent.pickImage(source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PickImage &&
            (identical(other.source, source) || other.source == source));
  }

  @override
  int get hashCode => Object.hash(runtimeType, source);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PickImageCopyWith<_$_PickImage> get copyWith =>
      __$$_PickImageCopyWithImpl<_$_PickImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ArticleDetail article) initialize,
    required TResult Function(String val) titleOnChanged,
    required TResult Function(String val) contentOnChanged,
    required TResult Function(ImageSource source) pickImage,
    required TResult Function() createArticlePressed,
    required TResult Function(List<Category> categories) fetchCategoryList,
  }) {
    return pickImage(source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ArticleDetail article)? initialize,
    TResult? Function(String val)? titleOnChanged,
    TResult? Function(String val)? contentOnChanged,
    TResult? Function(ImageSource source)? pickImage,
    TResult? Function()? createArticlePressed,
    TResult? Function(List<Category> categories)? fetchCategoryList,
  }) {
    return pickImage?.call(source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ArticleDetail article)? initialize,
    TResult Function(String val)? titleOnChanged,
    TResult Function(String val)? contentOnChanged,
    TResult Function(ImageSource source)? pickImage,
    TResult Function()? createArticlePressed,
    TResult Function(List<Category> categories)? fetchCategoryList,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleOnChanged value) titleOnChanged,
    required TResult Function(_ContentOnChanged value) contentOnChanged,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_CreateArticlePressed value) createArticlePressed,
    required TResult Function(_FetchCategoryList value) fetchCategoryList,
  }) {
    return pickImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_TitleOnChanged value)? titleOnChanged,
    TResult? Function(_ContentOnChanged value)? contentOnChanged,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_CreateArticlePressed value)? createArticlePressed,
    TResult? Function(_FetchCategoryList value)? fetchCategoryList,
  }) {
    return pickImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleOnChanged value)? titleOnChanged,
    TResult Function(_ContentOnChanged value)? contentOnChanged,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_CreateArticlePressed value)? createArticlePressed,
    TResult Function(_FetchCategoryList value)? fetchCategoryList,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(this);
    }
    return orElse();
  }
}

abstract class _PickImage implements ArticleFormEvent {
  const factory _PickImage(final ImageSource source) = _$_PickImage;

  ImageSource get source;
  @JsonKey(ignore: true)
  _$$_PickImageCopyWith<_$_PickImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateArticlePressedCopyWith<$Res> {
  factory _$$_CreateArticlePressedCopyWith(_$_CreateArticlePressed value,
          $Res Function(_$_CreateArticlePressed) then) =
      __$$_CreateArticlePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CreateArticlePressedCopyWithImpl<$Res>
    extends _$ArticleFormEventCopyWithImpl<$Res, _$_CreateArticlePressed>
    implements _$$_CreateArticlePressedCopyWith<$Res> {
  __$$_CreateArticlePressedCopyWithImpl(_$_CreateArticlePressed _value,
      $Res Function(_$_CreateArticlePressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CreateArticlePressed implements _CreateArticlePressed {
  const _$_CreateArticlePressed();

  @override
  String toString() {
    return 'ArticleFormEvent.createArticlePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CreateArticlePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ArticleDetail article) initialize,
    required TResult Function(String val) titleOnChanged,
    required TResult Function(String val) contentOnChanged,
    required TResult Function(ImageSource source) pickImage,
    required TResult Function() createArticlePressed,
    required TResult Function(List<Category> categories) fetchCategoryList,
  }) {
    return createArticlePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ArticleDetail article)? initialize,
    TResult? Function(String val)? titleOnChanged,
    TResult? Function(String val)? contentOnChanged,
    TResult? Function(ImageSource source)? pickImage,
    TResult? Function()? createArticlePressed,
    TResult? Function(List<Category> categories)? fetchCategoryList,
  }) {
    return createArticlePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ArticleDetail article)? initialize,
    TResult Function(String val)? titleOnChanged,
    TResult Function(String val)? contentOnChanged,
    TResult Function(ImageSource source)? pickImage,
    TResult Function()? createArticlePressed,
    TResult Function(List<Category> categories)? fetchCategoryList,
    required TResult orElse(),
  }) {
    if (createArticlePressed != null) {
      return createArticlePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleOnChanged value) titleOnChanged,
    required TResult Function(_ContentOnChanged value) contentOnChanged,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_CreateArticlePressed value) createArticlePressed,
    required TResult Function(_FetchCategoryList value) fetchCategoryList,
  }) {
    return createArticlePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_TitleOnChanged value)? titleOnChanged,
    TResult? Function(_ContentOnChanged value)? contentOnChanged,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_CreateArticlePressed value)? createArticlePressed,
    TResult? Function(_FetchCategoryList value)? fetchCategoryList,
  }) {
    return createArticlePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleOnChanged value)? titleOnChanged,
    TResult Function(_ContentOnChanged value)? contentOnChanged,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_CreateArticlePressed value)? createArticlePressed,
    TResult Function(_FetchCategoryList value)? fetchCategoryList,
    required TResult orElse(),
  }) {
    if (createArticlePressed != null) {
      return createArticlePressed(this);
    }
    return orElse();
  }
}

abstract class _CreateArticlePressed implements ArticleFormEvent {
  const factory _CreateArticlePressed() = _$_CreateArticlePressed;
}

/// @nodoc
abstract class _$$_FetchCategoryListCopyWith<$Res> {
  factory _$$_FetchCategoryListCopyWith(_$_FetchCategoryList value,
          $Res Function(_$_FetchCategoryList) then) =
      __$$_FetchCategoryListCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Category> categories});
}

/// @nodoc
class __$$_FetchCategoryListCopyWithImpl<$Res>
    extends _$ArticleFormEventCopyWithImpl<$Res, _$_FetchCategoryList>
    implements _$$_FetchCategoryListCopyWith<$Res> {
  __$$_FetchCategoryListCopyWithImpl(
      _$_FetchCategoryList _value, $Res Function(_$_FetchCategoryList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$_FetchCategoryList(
      null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$_FetchCategoryList implements _FetchCategoryList {
  const _$_FetchCategoryList(final List<Category> categories)
      : _categories = categories;

  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'ArticleFormEvent.fetchCategoryList(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchCategoryList &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchCategoryListCopyWith<_$_FetchCategoryList> get copyWith =>
      __$$_FetchCategoryListCopyWithImpl<_$_FetchCategoryList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ArticleDetail article) initialize,
    required TResult Function(String val) titleOnChanged,
    required TResult Function(String val) contentOnChanged,
    required TResult Function(ImageSource source) pickImage,
    required TResult Function() createArticlePressed,
    required TResult Function(List<Category> categories) fetchCategoryList,
  }) {
    return fetchCategoryList(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ArticleDetail article)? initialize,
    TResult? Function(String val)? titleOnChanged,
    TResult? Function(String val)? contentOnChanged,
    TResult? Function(ImageSource source)? pickImage,
    TResult? Function()? createArticlePressed,
    TResult? Function(List<Category> categories)? fetchCategoryList,
  }) {
    return fetchCategoryList?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ArticleDetail article)? initialize,
    TResult Function(String val)? titleOnChanged,
    TResult Function(String val)? contentOnChanged,
    TResult Function(ImageSource source)? pickImage,
    TResult Function()? createArticlePressed,
    TResult Function(List<Category> categories)? fetchCategoryList,
    required TResult orElse(),
  }) {
    if (fetchCategoryList != null) {
      return fetchCategoryList(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleOnChanged value) titleOnChanged,
    required TResult Function(_ContentOnChanged value) contentOnChanged,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_CreateArticlePressed value) createArticlePressed,
    required TResult Function(_FetchCategoryList value) fetchCategoryList,
  }) {
    return fetchCategoryList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_TitleOnChanged value)? titleOnChanged,
    TResult? Function(_ContentOnChanged value)? contentOnChanged,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_CreateArticlePressed value)? createArticlePressed,
    TResult? Function(_FetchCategoryList value)? fetchCategoryList,
  }) {
    return fetchCategoryList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleOnChanged value)? titleOnChanged,
    TResult Function(_ContentOnChanged value)? contentOnChanged,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_CreateArticlePressed value)? createArticlePressed,
    TResult Function(_FetchCategoryList value)? fetchCategoryList,
    required TResult orElse(),
  }) {
    if (fetchCategoryList != null) {
      return fetchCategoryList(this);
    }
    return orElse();
  }
}

abstract class _FetchCategoryList implements ArticleFormEvent {
  const factory _FetchCategoryList(final List<Category> categories) =
      _$_FetchCategoryList;

  List<Category> get categories;
  @JsonKey(ignore: true)
  _$$_FetchCategoryListCopyWith<_$_FetchCategoryList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ArticleFormState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  File? get thumbnailFile => throw _privateConstructorUsedError;
  List<CheckBoxState> get categoryList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleFormStateCopyWith<ArticleFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleFormStateCopyWith<$Res> {
  factory $ArticleFormStateCopyWith(
          ArticleFormState value, $Res Function(ArticleFormState) then) =
      _$ArticleFormStateCopyWithImpl<$Res, ArticleFormState>;
  @useResult
  $Res call(
      {RequestState state,
      String message,
      bool isSubmitting,
      String title,
      String content,
      String imageUrl,
      File? thumbnailFile,
      List<CheckBoxState> categoryList});
}

/// @nodoc
class _$ArticleFormStateCopyWithImpl<$Res, $Val extends ArticleFormState>
    implements $ArticleFormStateCopyWith<$Res> {
  _$ArticleFormStateCopyWithImpl(this._value, this._then);

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
    Object? title = null,
    Object? content = null,
    Object? imageUrl = null,
    Object? thumbnailFile = freezed,
    Object? categoryList = null,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailFile: freezed == thumbnailFile
          ? _value.thumbnailFile
          : thumbnailFile // ignore: cast_nullable_to_non_nullable
              as File?,
      categoryList: null == categoryList
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CheckBoxState>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArticleFormStateCopyWith<$Res>
    implements $ArticleFormStateCopyWith<$Res> {
  factory _$$_ArticleFormStateCopyWith(
          _$_ArticleFormState value, $Res Function(_$_ArticleFormState) then) =
      __$$_ArticleFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState state,
      String message,
      bool isSubmitting,
      String title,
      String content,
      String imageUrl,
      File? thumbnailFile,
      List<CheckBoxState> categoryList});
}

/// @nodoc
class __$$_ArticleFormStateCopyWithImpl<$Res>
    extends _$ArticleFormStateCopyWithImpl<$Res, _$_ArticleFormState>
    implements _$$_ArticleFormStateCopyWith<$Res> {
  __$$_ArticleFormStateCopyWithImpl(
      _$_ArticleFormState _value, $Res Function(_$_ArticleFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? isSubmitting = null,
    Object? title = null,
    Object? content = null,
    Object? imageUrl = null,
    Object? thumbnailFile = freezed,
    Object? categoryList = null,
  }) {
    return _then(_$_ArticleFormState(
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailFile: freezed == thumbnailFile
          ? _value.thumbnailFile
          : thumbnailFile // ignore: cast_nullable_to_non_nullable
              as File?,
      categoryList: null == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CheckBoxState>,
    ));
  }
}

/// @nodoc

class _$_ArticleFormState implements _ArticleFormState {
  const _$_ArticleFormState(
      {required this.state,
      required this.message,
      required this.isSubmitting,
      required this.title,
      required this.content,
      required this.imageUrl,
      required this.thumbnailFile,
      required final List<CheckBoxState> categoryList})
      : _categoryList = categoryList;

  @override
  final RequestState state;
  @override
  final String message;
  @override
  final bool isSubmitting;
  @override
  final String title;
  @override
  final String content;
  @override
  final String imageUrl;
  @override
  final File? thumbnailFile;
  final List<CheckBoxState> _categoryList;
  @override
  List<CheckBoxState> get categoryList {
    if (_categoryList is EqualUnmodifiableListView) return _categoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

  @override
  String toString() {
    return 'ArticleFormState(state: $state, message: $message, isSubmitting: $isSubmitting, title: $title, content: $content, imageUrl: $imageUrl, thumbnailFile: $thumbnailFile, categoryList: $categoryList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleFormState &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.thumbnailFile, thumbnailFile) ||
                other.thumbnailFile == thumbnailFile) &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      state,
      message,
      isSubmitting,
      title,
      content,
      imageUrl,
      thumbnailFile,
      const DeepCollectionEquality().hash(_categoryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleFormStateCopyWith<_$_ArticleFormState> get copyWith =>
      __$$_ArticleFormStateCopyWithImpl<_$_ArticleFormState>(this, _$identity);
}

abstract class _ArticleFormState implements ArticleFormState {
  const factory _ArticleFormState(
      {required final RequestState state,
      required final String message,
      required final bool isSubmitting,
      required final String title,
      required final String content,
      required final String imageUrl,
      required final File? thumbnailFile,
      required final List<CheckBoxState> categoryList}) = _$_ArticleFormState;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  bool get isSubmitting;
  @override
  String get title;
  @override
  String get content;
  @override
  String get imageUrl;
  @override
  File? get thumbnailFile;
  @override
  List<CheckBoxState> get categoryList;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleFormStateCopyWith<_$_ArticleFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
