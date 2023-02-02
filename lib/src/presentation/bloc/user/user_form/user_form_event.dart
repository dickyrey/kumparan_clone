part of 'user_form_bloc.dart';

@freezed
class UserFormEvent with _$UserFormEvent {
  const factory UserFormEvent.initial() = _Initial;
  const factory UserFormEvent.initialize(User user) = _Initialize;
  const factory UserFormEvent.nameOnChanged(String name) = _NameOnChanged;
  const factory UserFormEvent.pickImage(ImageSource source) = _PickImage;
  const factory UserFormEvent.saveChanges() = _SaveChanges;
}
