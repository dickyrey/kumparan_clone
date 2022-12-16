part of 'register_form_bloc.dart';

@freezed
class RegisterFormState with _$RegisterFormState {
  const factory RegisterFormState({
    required RequestState result,
    required String email,
    required bool isSubmitting,
    required bool isShowErrorMessages,
  }) = _RegisterFormState;

  factory RegisterFormState.initial() => const RegisterFormState(
        result: RequestState.empty,
        email: '',
        isSubmitting: false,
        isShowErrorMessages: false,
      );
}
