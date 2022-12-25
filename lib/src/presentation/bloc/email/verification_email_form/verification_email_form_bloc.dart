import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timer_count_down/timer_controller.dart';

part 'verification_email_form_event.dart';
part 'verification_email_form_state.dart';
part 'verification_email_form_bloc.freezed.dart';

class VerificationEmailFormBloc extends Bloc<VerificationEmailFormEvent, VerificationEmailFormState> {
  VerificationEmailFormBloc() : super(VerificationEmailFormState.initial()) {
    on<VerificationEmailFormEvent>((event, emit) {
       event.map(
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
      );
    });
  }
}
