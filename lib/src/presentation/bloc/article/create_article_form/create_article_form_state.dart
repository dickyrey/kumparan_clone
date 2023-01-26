part of 'create_article_form_bloc.dart';

@freezed
class CreateArticleFormState with _$CreateArticleFormState {
  const factory CreateArticleFormState({
    required RequestState state,
    required String message,
    required bool isSubmitting,
    required String title,
    required String content,
    required File? thumbnailFile,
    required List<CheckBoxState> categoryList,
  }) = _CreateArticleFormState;

  factory CreateArticleFormState.initial() {
    return const CreateArticleFormState(
      state: RequestState.empty,
      message: '',
      isSubmitting: false,
      title: '',
      content: '',
      thumbnailFile: null,
      categoryList: [],
    );
  }
}
