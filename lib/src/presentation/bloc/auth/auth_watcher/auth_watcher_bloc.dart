import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/domain/usecases/auth/check_google_auth.dart';
import 'package:kumparan_clone/src/domain/usecases/auth/sign_out_with_google.dart';

part 'auth_watcher_event.dart';
part 'auth_watcher_state.dart';
part 'auth_watcher_bloc.freezed.dart';

class AuthWatcherBloc extends Bloc<AuthWatcherEvent, AuthWatcherState> {
  AuthWatcherBloc(this._checkGoogleAuth, this._signOut)
      : super(const AuthWatcherState.initial()) {
    on<AuthWatcherEvent>((event, emit) async {
      await event.map(
        authCheckRequested: (event) async {
          emit(const AuthWatcherState.authInProgress());
          final result = await _checkGoogleAuth.execute();
          result.fold(
            (data) => emit(const AuthWatcherState.authInFailure('')),
            (status) {
              if (status == true) {
                emit(const AuthWatcherState.authenticated());
              } else {
                emit(const AuthWatcherState.notAuthenticated());
              }
            },
          );
        },
        signOut: (event) async {
          emit(const AuthWatcherState.authInProgress());
          final result = await _signOut.execute();
          result.fold(
            (f) => emit(AuthWatcherState.authInFailure(f.message)),
            (_) {
              emit(const AuthWatcherState.notAuthenticated());
            },
          );
        },
      );
    });
  }

  final CheckGoogleAuth _checkGoogleAuth;
  final SignOut _signOut;
}
