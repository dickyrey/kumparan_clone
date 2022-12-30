part of 'user_form_bloc.dart';

@freezed
class UserFormEvent with _$UserFormEvent {
  const factory UserFormEvent.initial() = _Initial;
  const factory UserFormEvent.nameOnChanged(String name) = _NameOnChanged;
  const factory UserFormEvent.bioOnChanged(String bio) = _BioOnChanged;
  const factory UserFormEvent.webOnChanged(String web) = _WebOnChanged;
  const factory UserFormEvent.birthdateOnChanged(BuildContext context) =
      _BirthdateOnChanged;
  const factory UserFormEvent.genderOnChanged(int genderId) = _GenderOnChanged;
  const factory UserFormEvent.pickImage(ImageSource source) = _PickImage;
}
