import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/domain/usecases/auth/sign_up_with_email.dart';
import 'package:timer_count_down/timer_controller.dart';

part 'verification_email_form_event.dart';
part 'verification_email_form_state.dart';
part 'verification_email_form_bloc.freezed.dart';

class VerificationEmailFormBloc
    extends Bloc<VerificationEmailFormEvent, VerificationEmailFormState> {
  VerificationEmailFormBloc(this._signUp)
      : super(VerificationEmailFormState.initial()) {
    on<VerificationEmailFormEvent>((event, emit) async {
      await event.map(
        onFinished: (_) {
          emit(
            state.copyWith(
              isTimeoutDone: true,
            ),
          );
        },
        startTimeOut: (e) {
          e.controller.restart();
          emit(
            state.copyWith(
              isTimeoutDone: false,
            ),
          );
        },
        resendEmail: (event) async {
          final result = await _signUp.execute(event.email);
          result.fold(
            (f) => emit(state.copyWith()),
            (r) => emit(state.copyWith()),
          );
        },
      );
    });
  }
  final SignUpWithEmail _signUp;
}
