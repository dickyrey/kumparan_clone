part of 'search_province_form_bloc.dart';

@freezed
class SearchProvinceFormEvent with _$SearchProvinceFormEvent {
  const factory SearchProvinceFormEvent.initial() = _Initial;
  const factory SearchProvinceFormEvent.searchOnChanged(String query) =
      _SearchOnChanged;
}
