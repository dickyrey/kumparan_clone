import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timer_count_down/timer_controller.dart';

part 'verification_email_event.dart';
part 'verification_email_state.dart';
part 'verification_email_bloc.freezed.dart';

class VerificationEmailBloc
    extends Bloc<VerificationEmailEvent, VerificationEmailState> {
  VerificationEmailBloc() : super(VerificationEmailState.initial()) {
    on<VerificationEmailEvent>((event, emit) async {
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
