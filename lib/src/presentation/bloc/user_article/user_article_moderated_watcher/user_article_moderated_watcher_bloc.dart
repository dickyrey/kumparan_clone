import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/domain/entities/article.dart';
import 'package:kumparan_clone/src/domain/usecases/user_article/get_moderated_article.dart';

part 'user_article_moderated_watcher_event.dart';
part 'user_article_moderated_watcher_state.dart';
part 'user_article_moderated_watcher_bloc.freezed.dart';

class UserArticleModeratedWatcherBloc extends Bloc<
    UserArticleModeratedWatcherEvent, UserArticleModeratedWatcherState> {
  UserArticleModeratedWatcherBloc(this._article)
      : super(const UserArticleModeratedWatcherState.initial()) {
    on<UserArticleModeratedWatcherEvent>((event, emit) async {
      await event.map(
        fetchArticle: (_) async {
          emit(const UserArticleModeratedWatcherState.loading());
          final result = await _article.execute();
          result.fold(
            (f) => emit(const UserArticleModeratedWatcherState.error()),
            (data) => emit(UserArticleModeratedWatcherState.loaded(data)),
          );
        },
      );
    });
  }
  final GetModeratedArticle _article;
}
