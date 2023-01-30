import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/domain/entities/article.dart';
import 'package:kumparan_clone/src/domain/usecases/user_article/get_published_article.dart';

part 'user_article_published_watcher_event.dart';
part 'user_article_published_watcher_state.dart';
part 'user_article_published_watcher_bloc.freezed.dart';

class UserArticlePublishedWatcherBloc extends Bloc<
    UserArticlePublishedWatcherEvent, UserArticlePublishedWatcherState> {
  UserArticlePublishedWatcherBloc(this._article)
      : super(const UserArticlePublishedWatcherState.initial()) {
    on<UserArticlePublishedWatcherEvent>((event, emit) async {
      await event.map(
        fetchArticle: (_) async {
          emit(const UserArticlePublishedWatcherState.loading());
          final result = await _article.execute();
          result.fold(
            (f) => emit(const UserArticlePublishedWatcherState.error()),
            (data) => emit(UserArticlePublishedWatcherState.loaded(data)),
          );
        },
      );
    });
  }
  final GetPublishedArticle _article;
}
