import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/common/enums.dart';
import 'package:kumparan_clone/src/domain/entities/category.dart';
import 'package:kumparan_clone/src/domain/entities/interest.dart';
import 'package:kumparan_clone/src/domain/usecases/get_categories.dart';

part 'interest_form_event.dart';
part 'interest_form_state.dart';
part 'interest_form_bloc.freezed.dart';

class InterestFormBloc extends Bloc<InterestFormEvent, InterestFormState> {
  InterestFormBloc(this._getCategories) : super(InterestFormState.initial()) {
    on<InterestFormEvent>(
      (event, emit) async {
        await event.map(
          fetchCategory: (_) async {

            emit(state.copyWith(state: RequestState.loading));

            final result = await _getCategories.execute();

            result.fold(
              (f) => emit(
                state.copyWith(
                  state: RequestState.error,
                  message: f.message,
                ),
              ),
              (data) {
                final interest =
                    data.map((e) => Interest(category: e)).toList();
                emit(
                  state.copyWith(
                    state: RequestState.loaded,
                    categories: data,
                    selectedCategory: interest,
                  ),
                );
              },
            );
          },
          
          sendInterest: (_) {},
        );
      },
    );
  }

  final GetCategories _getCategories;

}
