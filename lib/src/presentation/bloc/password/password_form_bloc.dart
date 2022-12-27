import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/common/enums.dart';

part 'password_form_event.dart';
part 'password_form_state.dart';
part 'password_form_bloc.freezed.dart';

class PasswordFormBloc extends Bloc<PasswordFormEvent, PasswordFormState> {
  PasswordFormBloc() : super(PasswordFormState.initial()) {
    on<PasswordFormEvent>((event, emit) async {
      await event.map(
        initial: (_) {
          emit(
            state.copyWith(
              result: RequestState.empty,
              password: '',
              repeatPassword: '',
              isShowErrorMessages: false,
              isSubmitting: false,
            ),
          );
        },
        passwordOnChanged: (e) {
          emit(
            state.copyWith(
              password: e.password,
              isShowErrorMessages: false,
            ),
          );
        },
        repeatPasswordOnChanged: (e) {
          emit(
            state.copyWith(
              repeatPassword: e.repeatPassword,
              isShowErrorMessages: false,
            ),
          );
        },
        sendPressed: (_) async {
          emit(
            state.copyWith(
              isSubmitting: true,
              isShowErrorMessages: false,
            ),
          );
          await Future.delayed(
            const Duration(seconds: 3),
            () {
              emit(
                state.copyWith(
                  password: '',
                  repeatPassword: '',
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
