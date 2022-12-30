part of 'user_form_bloc.dart';

@freezed
class UserFormState with _$UserFormState {
  const factory UserFormState({
    required RequestState result,
    required String name,
    required String bio,
    required String web,
    required String birthdate,
    required int gender,
    required File? imageFile,
    required bool isSubmitting,
    required bool isShowErrorMessages,
  }) = _UserFormState;

  factory UserFormState.initial() => const UserFormState(
        result: RequestState.empty,
        name: '',
        bio: '',
        web: '',
        birthdate: '',
        gender: 0,
        imageFile: null,
        isSubmitting: false,
        isShowErrorMessages: false,
      );
}
