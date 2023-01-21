import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/domain/usecases/article/check_like_status.dart';
import 'package:kumparan_clone/src/domain/usecases/article/like_article.dart';

part 'article_like_watcher_event.dart';
part 'article_like_watcher_state.dart';
part 'article_like_watcher_bloc.freezed.dart';

class ArticleLikeWatcherBloc
    extends Bloc<ArticleLikeWatcherEvent, ArticleLikeWatcherState> {
  ArticleLikeWatcherBloc(this._checkLikeStatus, this._likeArticle)
      : super(const ArticleLikeWatcherState.initial()) {
    on<ArticleLikeWatcherEvent>((event, emit) async {
      await event.map(
        fetchLikeStatus: (event) async {
          emit(const ArticleLikeWatcherState.unliked());

          final result = await _checkLikeStatus.execute(event.id);

          result.fold(
            (f) => emit(const ArticleLikeWatcherState.unliked()),
            (data) {
              if (data == true) {
                emit(const ArticleLikeWatcherState.liked());
              } else {
                emit(const ArticleLikeWatcherState.unliked());
              }
            },
          );
        },
        likePressed: (event) async {
          if (state == const ArticleLikeWatcherState.liked()) {
            emit(const ArticleLikeWatcherState.unliked());

            final result = await _likeArticle.execute(event.id);

            result.fold(
              (_) => emit(const ArticleLikeWatcherState.unliked()),
              (_) => emit(const ArticleLikeWatcherState.unliked()),
            );
          } else {
            emit(const ArticleLikeWatcherState.liked());

            final result = await _likeArticle.execute(event.id);

            result.fold(
              (_) => emit(const ArticleLikeWatcherState.liked()),
              (_) => emit(const ArticleLikeWatcherState.liked()),
            );
          }
        },
      );
    });
  }
  final CheckLikeStatus _checkLikeStatus;
  final LikeArticle _likeArticle;
}
