import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/common/enums.dart';
import 'package:kumparan_clone/src/domain/usecases/auth/resend_email_verification.dart';
import 'package:timer_count_down/timer_controller.dart';

part 'verification_email_form_event.dart';
part 'verification_email_form_state.dart';
part 'verification_email_form_bloc.freezed.dart';

class VerificationEmailFormBloc
    extends Bloc<VerificationEmailFormEvent, VerificationEmailFormState> {
  VerificationEmailFormBloc(this._resend)
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
        startTimeOut: (e) async {
          emit(
            state.copyWith(
              state: RequestState.loading,
              isSubmitting: true,
            ),
          );
          final result = await _resend.execute();
          result.fold(
            (f) => emit(
              state.copyWith(
                state: RequestState.error,
                message: f.message,
                isSubmitting: false,
              ),
            ),
            (_) => emit(
              state.copyWith(
                state: RequestState.loaded,
                isSubmitting: false,
                isTimeoutDone: false,
              ),
            ),
          );
          e.controller.restart();
          emit(
            state.copyWith(
              isTimeoutDone: false,
              state: RequestState.empty,
              message: '',
            ),
          );
        },
        resendEmail: (event) async {
          final result = await _resend.execute();
          result.fold(
            (f) => emit(
              state.copyWith(
                state: RequestState.error,
                message: f.message,
                isSubmitting: false,
              ),
            ),
            (_) => emit(
              state.copyWith(
                state: RequestState.loaded,
                isSubmitting: false,
              ),
            ),
          );
        },
      );
    });
  }
  final ResendEmailVerification _resend;
}
