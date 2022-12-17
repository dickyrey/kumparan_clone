import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/common/enums.dart';

part 'login_form_event.dart';
part 'login_form_state.dart';
part 'login_form_bloc.freezed.dart';

class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  LoginFormBloc() : super(LoginFormState.initial()) {
    on<LoginFormEvent>((event, emit) async {
      await event.map(
        initial: (_) {
          emit(
            state.copyWith(
              email: '',
              password: '',
              isShowErrorMessages: false,
              isSubmitting: false,
              result: RequestState.empty,
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
        passwordOnChanged: (e) {
          emit(
            state.copyWith(
              password: e.password,
              isShowErrorMessages: false,
            ),
          );
        },
        signInPressed: (_) {
          // Future.delayed
        },
      );
    });
  }
}
