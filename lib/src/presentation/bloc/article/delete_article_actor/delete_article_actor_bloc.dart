import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/domain/usecases/article/delete_article.dart';

part 'delete_article_actor_event.dart';
part 'delete_article_actor_state.dart';
part 'delete_article_actor_bloc.freezed.dart';

class DeleteArticleActorBloc
    extends Bloc<DeleteArticleActorEvent, DeleteArticleActorState> {
  DeleteArticleActorBloc(this._delete) : super(const _Initial()) {
    on<DeleteArticleActorEvent>((event, emit) async {
      await event.map(
        delete: (event) async {
          emit(const DeleteArticleActorState.loading());

          final id = event.id.replaceFirst(Const.unusedPath, '');
          final result = await _delete.execute(id);
          result.fold(
            (f) => emit(DeleteArticleActorState.error(f.message)),
            (_) => emit(const DeleteArticleActorState.success()),
          );
        },
      );
    });
  }
  final DeleteArticle _delete;
}
