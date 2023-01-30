part of 'article_form_bloc.dart';

@freezed
class ArticleFormEvent with _$ArticleFormEvent {
  const factory ArticleFormEvent.initial() = _Initial;
  const factory ArticleFormEvent.initialize(ArticleDetail article) = _Initialize;
  const factory ArticleFormEvent.titleOnChanged(String val) = _TitleOnChanged;
  const factory ArticleFormEvent.contentOnChanged(String html) = _ContentOnChanged;
  const factory ArticleFormEvent.pickImage(ImageSource source) = _PickImage;

  const factory ArticleFormEvent.fetchCategoryList(List<Category> categories) = _FetchCategoryList;
  const factory ArticleFormEvent.createArticlePressed() = _CreateArticlePressed;
  const factory ArticleFormEvent.updateArticlePressed() = _UpdateArticlePressed;
}
