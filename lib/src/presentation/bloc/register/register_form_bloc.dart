import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/common/enums.dart';

part 'register_form_event.dart';
part 'register_form_state.dart';
part 'register_form_bloc.freezed.dart';

class RegisterFormBloc extends Bloc<RegisterFormEvent, RegisterFormState> {
  RegisterFormBloc() : super(RegisterFormState.initial()) {
    on<RegisterFormEvent>((event, emit) async {
      await event.map(
        initial: (_) {
          emit(
            state.copyWith(
              result: RequestState.empty,
              email: '',
              isShowErrorMessages: false,
              isSubmitting: false,
            ),
          );
        },
        emailOnChanged: (event) {
          emit(
            state.copyWith(
              email: event.email,
              isShowErrorMessages: false,
            ),
          );
        },
        signInPressed: (_) async {
          emit(
            state.copyWith(
              isSubmitting: true,
              isShowErrorMessages: false,
            ),
          );
          await Future.delayed(
            const Duration(seconds: 0),
            () {
              emit(
                state.copyWith(
                  email: '',
                  isSubmitting: false,
                  result: RequestState.loaded,
                ),
              );
            },
          );
        },
      );
    });
  }
}
