import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/domain/usecases/comment_article/send_comment.dart';

part 'send_comment_actor_event.dart';
part 'send_comment_actor_state.dart';
part 'send_comment_actor_bloc.freezed.dart';

class SendCommentActorBloc
    extends Bloc<SendCommentActorEvent, SendCommentActorState> {
  SendCommentActorBloc(this._sendComment)
      : super(const SendCommentActorState.initial()) {
    on<SendCommentActorEvent>((event, emit) async {
      await event.map(
        init: (e) {
          emit(const SendCommentActorState.initial());
        },
        sendComment: (e) async {
          final id = e.id.replaceFirst(Const.unusedPath, '');
          final result = await _sendComment.execute(
            id: id,
            comment: e.comment,
          );

          result.fold(
            (f) => emit(SendCommentActorState.sendFailure(f.message)),
            (_) => emit(const SendCommentActorState.sendSuccess()),
          );
        },
      );
    });
  }
  final SendComment _sendComment;
}
