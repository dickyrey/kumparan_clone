import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/domain/usecases/article/delete_comment.dart';

part 'delete_comment_actor_event.dart';
part 'delete_comment_actor_state.dart';
part 'delete_comment_actor_bloc.freezed.dart';

class DeleteCommentActorBloc extends Bloc<DeleteCommentActorEvent, DeleteCommentActorState> {
  DeleteCommentActorBloc(this._deleteComment) : super(const DeleteCommentActorState.initial()) {
    on<DeleteCommentActorEvent>((event, emit) async {
      await event.map(
        init: (_) {
          emit(const DeleteCommentActorState.initial());
        },
        deletePressed: (e) async {
          final id = e.id.replaceFirst(Const.unusedPath, '');
          final result = await _deleteComment.execute(
            id: id,
            userId: e.userId,
          );

          result.fold(
            (f) => emit(DeleteCommentActorState.deleteInFailure(f.message)),
            (_) => emit(const DeleteCommentActorState.deleteInSuccess()),
          );
        },
      );
    });
  }
  final DeleteComment _deleteComment;
}
