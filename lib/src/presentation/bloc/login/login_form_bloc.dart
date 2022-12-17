import 'package:flutter_bloc/flutter_bloc.dart';
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
        obscureTextPressed: (_) {
          emit(
            state.copyWith(
              obscureText: (state.obscureText == true) ? false : true,
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
        signInPressed: (_) async {
          emit(
            state.copyWith(
              isSubmitting: true,
            ),
          );
          await Future.delayed(const Duration(seconds: 3), () {
            emit(
              state.copyWith(result: RequestState.loaded),
            );
          });
        },
      );
    });
  }
}
