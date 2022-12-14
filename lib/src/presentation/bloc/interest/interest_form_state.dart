part of 'interest_form_bloc.dart';

@freezed
class InterestFormState with _$InterestFormState {
  const factory InterestFormState({
    required RequestState state,
    required String message,
    required List<Category> categories,
    required List<Interest> selectedCategory,
  }) = _InterestFormState;

  factory InterestFormState.initial() => const _InterestFormState(
        state: RequestState.empty,
        message: '',
        categories: [],
        selectedCategory: [],
      );
}
