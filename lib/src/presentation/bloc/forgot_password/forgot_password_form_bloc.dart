import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/common/enums.dart';

part 'forgot_password_form_event.dart';
part 'forgot_password_form_state.dart';
part 'forgot_password_form_bloc.freezed.dart';

class ForgotPasswordFormBloc extends Bloc<ForgotPasswordFormEvent, ForgotPasswordFormState> {
  ForgotPasswordFormBloc() : super(ForgotPasswordFormState.initial()) {
    on<ForgotPasswordFormEvent>((event, emit) async {
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
        emailOnChanged: (e) {
          emit(
            state.copyWith(
              email: e.email,
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
