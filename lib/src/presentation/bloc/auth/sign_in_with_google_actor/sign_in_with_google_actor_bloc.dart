import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:kumparan_clone/src/domain/usecases/auth/get_time_zone.dart';
import 'package:kumparan_clone/src/domain/usecases/auth/sign_in_with_google.dart';

part 'sign_in_with_google_actor_bloc.freezed.dart';
part 'sign_in_with_google_actor_event.dart';
part 'sign_in_with_google_actor_state.dart';

class SignInWithGoogleActorBloc
    extends Bloc<SignInWithGoogleActorEvent, SignInWithGoogleActorState> {
  SignInWithGoogleActorBloc(this._googleSignIn)
      : super(const SignInWithGoogleActorState.initial()) {
    on<SignInWithGoogleActorEvent>((event, emit) async {
      await event.map(
        googleSignIn: (event) async {
          emit(const SignInWithGoogleActorState.signInProgress());
          final result = await _googleSignIn.execute(event.sha256);
          await result.fold(
            (f) async {
              emit(SignInWithGoogleActorState.signInFailure(f.message));
            },
            (_) async {
              emit(const SignInWithGoogleActorState.signInSuccess());
            },
          );
        },
      );
    });
  }
  final SignInWithGoogle _googleSignIn;
}
