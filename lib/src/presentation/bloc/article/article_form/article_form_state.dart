part of 'article_form_bloc.dart';

@freezed
class ArticleFormState with _$ArticleFormState {
  const factory ArticleFormState({
    required RequestState state,
    required String message,
    required bool isSubmitting,
    required String articleId,
    required String title,
    required String content,
    required String imageUrl,
    required File? imageFile,
    required List<CheckBoxState> categoryList,
  }) = _ArticleFormState;

  factory ArticleFormState.initial() {
    return const ArticleFormState(
      state: RequestState.empty,
      message: '',
      isSubmitting: false,
      articleId: '',
      title: '',
      content: '',
      imageUrl: '',
      imageFile: null,
      categoryList: [],
    );
  }
}
