part of 'article_form_bloc.dart';

@freezed
class ArticleFormState with _$ArticleFormState {
  const factory ArticleFormState({
    required RequestState state,
    required String message,
    required bool isSubmitting,
    required String title,
    required String content,
    required String originalContent,
    required String imageUrl,
    required File? thumbnailFile,
    required List<CheckBoxState> categoryList,
  }) = _ArticleFormState;

  factory ArticleFormState.initial() {
    return const ArticleFormState(
      state: RequestState.empty,
      message: '',
      isSubmitting: false,
      title: '',
      originalContent: '',
      content: '',
      imageUrl: '',
      thumbnailFile: null,
      categoryList: [],
    );
  }
}
