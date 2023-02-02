import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/domain/usecases/user_article/change_to_moderated.dart';

part 'change_to_moderated_actor_event.dart';
part 'change_to_moderated_actor_state.dart';
part 'change_to_moderated_actor_bloc.freezed.dart';

class ChangeToModeratedActorBloc
    extends Bloc<ChangeToModeratedActorEvent, ChangeToModeratedActorState> {
  ChangeToModeratedActorBloc(this._changetomoderated)
      : super(const _Initial()) {
    on<ChangeToModeratedActorEvent>((event, emit) async {
      await event.map(
        sendToModerated: (event) async {
          emit(const ChangeToModeratedActorState.loading());
          final id = event.id.replaceFirst(Const.unusedPath, '');
          final result = await _changetomoderated.execute(id);
          result.fold(
            (f) => emit(ChangeToModeratedActorState.error(f.message)),
            (_) => emit(const ChangeToModeratedActorState.success()),
          );
        },
      );
    });
  }
  final ChangeToModerated _changetomoderated;
}
