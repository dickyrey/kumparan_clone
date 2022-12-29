part of 'search_province_form_bloc.dart';

@freezed
class SearchProvinceFormState with _$SearchProvinceFormState {
  const factory SearchProvinceFormState({
    required RequestState result,
    required String query,
    required bool isSubmitting,
    required bool isShowErrorMessages,
    required List<String> searchResultList,
    required List<String> provinceList,
  }) = _SearchProvinceFormState;

  factory SearchProvinceFormState.initial() => const SearchProvinceFormState(
        result: RequestState.empty,
        query: '',
        isSubmitting: false,
        isShowErrorMessages: false,
        searchResultList: [],
        provinceList: [
          'Aceh',
          'Bali',
          'Banten',
          'Bengkulu',
          'Gorontalo',
          'Jakarta',
          'Jambi',
          'Jawa Barat',
          'Jawa Tengah',
          'Jawa Timur',
          'Kalimantan Barat',
          'Kalimantan Selatan',
          'Kalimantan Tengah',
          'Kalimantan Timur',
          'Kalimantan Utara',
          'Kepulauan Bangka Belitung',
          'Kepulauan Riau',
          'Lampung',
          'Maluku',
          'Maluku Utara',
          'Nusa Tenggara Barat',
          'Nusa Tenggara Timur',
          'Papua',
          'Papua Barat',
          'Riau',
          'Sulawesi Barat',
          'Sulawesi Selatan',
          'Sulawesi Tengah',
          'Sulawesi Tenggara',
          'Sulawesi Utara',
          'Sumatra Barat',
          'Sumatra Selatan',
          'Sumatra Utara',
          'Yogyakarta'
        ],
      );
}
