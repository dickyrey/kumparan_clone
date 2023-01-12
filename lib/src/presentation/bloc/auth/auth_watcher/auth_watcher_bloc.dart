import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/domain/usecases/check_google_auth.dart';
import 'package:kumparan_clone/src/domain/usecases/sign_out_with_google.dart';

part 'auth_watcher_event.dart';
part 'auth_watcher_state.dart';
part 'auth_watcher_bloc.freezed.dart';

class AuthWatcherBloc extends Bloc<AuthWatcherEvent, AuthWatcherState> {
  AuthWatcherBloc(this._checkGoogleAuth, this._signOutWithGoogle)
      : super(const AuthWatcherState.initial()) {
    on<AuthWatcherEvent>((event, emit) async {
      await event.map(
        authCheckRequested: (event) async {
          emit(const AuthWatcherState.authInProgress());

          //   final prefs = await SharedPreferences.getInstance();
          //   final token = prefs.getString(ACCESS_TOKEN);
          //   if (token == null) {
          //     emit(const AuthWatcherState.notAuthenticated());
          //   } else {
          //     emit(const AuthWatcherState.authenticated());
          //   }
          // },
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
          final result = await _signOutWithGoogle.execute();
          result.fold(
            (f) => emit(AuthWatcherState.authInFailure(f.message)),
            (_) => emit(const AuthWatcherState.notAuthenticated()),
          );
        },
      );
    });
  }
  
  final CheckGoogleAuth _checkGoogleAuth;
  final SignOutWithGoogle _signOutWithGoogle;
}
