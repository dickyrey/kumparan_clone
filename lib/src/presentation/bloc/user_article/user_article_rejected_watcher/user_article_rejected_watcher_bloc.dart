import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/domain/entities/article.dart';
import 'package:kumparan_clone/src/domain/usecases/user_article/get_rejected_article.dart';

part 'user_article_rejected_watcher_event.dart';
part 'user_article_rejected_watcher_state.dart';
part 'user_article_rejected_watcher_bloc.freezed.dart';

class UserArticleRejectedWatcherBloc extends Bloc<
    UserArticleRejectedWatcherEvent, UserArticleRejectedWatcherState> {
  UserArticleRejectedWatcherBloc(this._article)
      : super(const UserArticleRejectedWatcherState.initial()) {
    on<UserArticleRejectedWatcherEvent>((event, emit) async {
      await event.map(
        fetchArticle: (_) async {
          emit(const UserArticleRejectedWatcherState.loading());
          final result = await _article.execute();
          result.fold(
            (f) => emit(const UserArticleRejectedWatcherState.error()),
            (data) => emit(UserArticleRejectedWatcherState.loaded(data)),
          );
        },
      );
    });
  }
  final GetRejectedArticle _article;
}
