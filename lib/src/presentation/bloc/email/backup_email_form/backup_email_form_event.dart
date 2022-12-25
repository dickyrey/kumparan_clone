part of 'backup_email_form_bloc.dart';

@freezed
class BackupEmailFormEvent with _$BackupEmailFormEvent {
  const factory BackupEmailFormEvent.initial() = _Initial;
  const factory BackupEmailFormEvent.emailOnChanged(String email) = _EmailOnChanged;
  const factory BackupEmailFormEvent.sendPressed() = _SendPressed;
}
