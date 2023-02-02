part of 'user_form_bloc.dart';

@freezed
class UserFormState with _$UserFormState {
  const factory UserFormState({
    required RequestState state,
    required String message,
    required String name,
    required String imageUrl,
    required File? imageFile,
    required bool isSubmitting,
    required bool isShowErrorMessages,
  }) = _UserFormState;

  factory UserFormState.initial() => const UserFormState(
        state: RequestState.empty,
        message: '',
        name: '',
        imageUrl: Const.photo,
        imageFile: null,
        isSubmitting: false,
        isShowErrorMessages: false,
      );
}
