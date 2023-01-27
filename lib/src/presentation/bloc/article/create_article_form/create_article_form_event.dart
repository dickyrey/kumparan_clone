part of 'create_article_form_bloc.dart';

@freezed
class CreateArticleFormEvent with _$CreateArticleFormEvent {
  const factory CreateArticleFormEvent.initial() = _Initial;
  const factory CreateArticleFormEvent.initialize(ArticleDetail article) = _Initialize;
  const factory CreateArticleFormEvent.titleOnChanged(String val) = _TitleOnChanged;
  const factory CreateArticleFormEvent.contentOnChanged(String val) = _ContentOnChanged;
  const factory CreateArticleFormEvent.pickImage(ImageSource source) = _PickImage;
  const factory CreateArticleFormEvent.createArticlePressed() = _CreateArticlePressed;

  const factory CreateArticleFormEvent.fetchCategoryList(List<Category> categories) = _FetchCategoryList;
}
