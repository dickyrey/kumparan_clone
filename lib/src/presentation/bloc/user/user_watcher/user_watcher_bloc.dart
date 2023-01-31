import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/domain/entities/user.dart';
import 'package:kumparan_clone/src/domain/usecases/profile/get_profile.dart';

part 'user_watcher_event.dart';
part 'user_watcher_state.dart';
part 'user_watcher_bloc.freezed.dart';

class UserWatcherBloc extends Bloc<UserWatcherEvent, UserWatcherState> {
  UserWatcherBloc(this._getProfile) : super(const UserWatcherState.initial()) {
    on<UserWatcherEvent>((event, emit) async {
      await event.map(
        init:(_){
          emit(const UserWatcherState.initial());
        },
        fetchUser: (_) async {
          print('CARI USER PROFILENYA PAKD');
          emit(const UserWatcherState.loading());

          final result = await _getProfile.execute();

          result.fold(
            (f) => emit(UserWatcherState.error(f.message)),
            (data) => emit(UserWatcherState.loaded(data)),
          );
        },
      );
    });
  }
  final GetProfile _getProfile;
}
