import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/common/enums.dart';
import 'package:kumparan_clone/src/domain/usecases/auth/sign_up_with_email.dart';

part 'sign_up_with_email_form_event.dart';
part 'sign_up_with_email_form_state.dart';
part 'sign_up_with_email_form_bloc.freezed.dart';

class SignUpWithEmailFormBloc
    extends Bloc<SignUpWithEmailFormEvent, SignUpWithEmailFormState> {
  SignUpWithEmailFormBloc(this._signUp)
      : super(SignUpWithEmailFormState.initial()) {
    on<SignUpWithEmailFormEvent>((event, emit) async {
      await event.map(
        initial: (_) {
          emit(SignUpWithEmailFormState.initial());
        },
        emailOnChanged: (event) {
          emit(state.copyWith(email: event.val));
        },
        signUpPressed: (_) async {
          emit(
            state.copyWith(
              state: RequestState.loading,
              isSubmitting: true,
            ),
          );
          final result = await _signUp.execute(state.email);
          result.fold(
            (f) => emit(
              state.copyWith(
                state: RequestState.error,
                message: f.message,
                isSubmitting: false,
              ),
            ),
            (r) => emit(
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
  final SignUpWithEmail _signUp;
}
