import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/common/enums.dart';

part 'search_province_form_event.dart';
part 'search_province_form_state.dart';
part 'search_province_form_bloc.freezed.dart';

class SearchProvinceFormBloc
    extends Bloc<SearchProvinceFormEvent, SearchProvinceFormState> {
  SearchProvinceFormBloc() : super(SearchProvinceFormState.initial()) {
    on<SearchProvinceFormEvent>((event, emit) {
      event.map(
        initial: (_) {},
        searchOnChanged: (e) {
          emit(
            state.copyWith(
              searchResultList: state.provinceList.where((items) {
                final prov = items.toLowerCase();
                final query = e.query.toLowerCase();

                return prov.contains(query);
              }).toList(),
            ),
          );
        },
      );
    });
  }
}
