import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/common/enums.dart';
import 'package:kumparan_clone/src/domain/usecases/password/add_password.dart';

part 'password_form_event.dart';
part 'password_form_state.dart';
part 'password_form_bloc.freezed.dart';

class PasswordFormBloc extends Bloc<PasswordFormEvent, PasswordFormState> {
  PasswordFormBloc(this._addPassword) : super(PasswordFormState.initial()) {
    on<PasswordFormEvent>((event, emit) async {
      await event.map(
        initial: (_) {
          emit(PasswordFormState.initial());
        },
        obscureTextPressed: (_) {
          if (state.obscureText == true) {
            emit(state.copyWith(obscureText: false));
          } else {
            emit(state.copyWith(obscureText: true));
          }
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
        addPasswordPressed: (_) async {
          emit(
            state.copyWith(
              state: RequestState.loading,
              isSubmitting: true,
              isShowErrorMessages: false,
            ),
          );
          final result = await _addPassword.execute(state.password);
          result.fold(
            (f) => emit(
              state.copyWith(
                state: RequestState.empty,
                isSubmitting: false,
                message: f.message,
              ),
            ),
            (_) => emit(
              state.copyWith(
                password: '',
                repeatPassword: '',
                isSubmitting: false,
                state: RequestState.loaded,
              ),
            ),
          );
        },
      );
    });
  }
  final AddPassword _addPassword;
}
