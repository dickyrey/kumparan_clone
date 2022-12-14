part of 'interest_form_bloc.dart';

@freezed
class InterestFormEvent with _$InterestFormEvent {
  const factory InterestFormEvent.fetchCategory() = _FetchCategory;
  const factory InterestFormEvent.sendInterest() = _SendInterest;
}
