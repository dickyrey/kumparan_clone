part of 'backup_email_form_bloc.dart';

@freezed
class BackupEmailFormState with _$BackupEmailFormState {
  const factory BackupEmailFormState({
    required RequestState result,
    required String email,
    required bool isSubmitting,
    required bool isShowErrorMessages,
  }) = _BackupEmailFormState;
  
  factory BackupEmailFormState.initial() => const BackupEmailFormState(
        result: RequestState.empty,
        email: '',
        isSubmitting: false,
        isShowErrorMessages: false,
      );
}
