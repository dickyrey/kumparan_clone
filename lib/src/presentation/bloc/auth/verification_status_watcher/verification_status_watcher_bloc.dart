import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/domain/entities/verification_status.dart';
import 'package:kumparan_clone/src/domain/usecases/auth/check_user_verification.dart';

part 'verification_status_watcher_event.dart';
part 'verification_status_watcher_state.dart';
part 'verification_status_watcher_bloc.freezed.dart';

class VerificationStatusWatcherBloc extends Bloc<VerificationStatusWatcherEvent,
    VerificationStatusWatcherState> {
  VerificationStatusWatcherBloc(this._verification) : super(const _Initial()) {
    on<VerificationStatusWatcherEvent>((event, emit) async {
      await event.map(
        fetchStatus: (_) async {
          emit(const VerificationStatusWatcherState.loading());
          final result = await _verification.execute();
          result.fold(
            (f) => emit(VerificationStatusWatcherState.error(f.message)),
            (data) => emit(VerificationStatusWatcherState.loaded(data)),
          );
        },
      );
    });
  }
  final CheckUserVerification _verification;
}
