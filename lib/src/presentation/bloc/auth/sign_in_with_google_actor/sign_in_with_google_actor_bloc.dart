import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:kumparan_clone/src/domain/usecases/auth/sign_in_with_google.dart';

part 'sign_in_with_google_actor_bloc.freezed.dart';
part 'sign_in_with_google_actor_event.dart';
part 'sign_in_with_google_actor_state.dart';

class SignInWithGoogleActorBloc extends Bloc<SignInWithGoogleActorEvent, SignInWithGoogleActorState> {
  SignInWithGoogleActorBloc(this._googleSignIn) : super(const SignInWithGoogleActorState.initial()) {
    on<SignInWithGoogleActorEvent>((event, emit) async {
      await event.map(
        googleSignIn: (event) async {
          emit(const SignInWithGoogleActorState.signInProgress());
          final now = DateTime.now();
          final utcFormatter = now.toUtc();
          final dateFormat = DateFormat('yyyy-MM-dd HH:mm:ss').format(utcFormatter);
          final base64 = base64Encode(utf8.encode(dateFormat));
          final result = await _googleSignIn.execute(base64);

          result.fold(
            (f) => emit(SignInWithGoogleActorState.signInFailure(f.message)),
            (_) => emit(const SignInWithGoogleActorState.signInSuccess()),
          );
        },
      );
    });
  }
  final SignInWithGoogle _googleSignIn;
}
