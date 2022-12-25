import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/common/enums.dart';

part 'backup_email_form_event.dart';
part 'backup_email_form_state.dart';
part 'backup_email_form_bloc.freezed.dart';

class BackupEmailFormBloc extends Bloc<BackupEmailFormEvent, BackupEmailFormState> {
  BackupEmailFormBloc() : super(BackupEmailFormState.initial()) {
    on<BackupEmailFormEvent>((event, emit) async {
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
