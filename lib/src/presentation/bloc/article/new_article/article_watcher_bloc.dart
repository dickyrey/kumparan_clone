import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/domain/entities/article.dart';
import 'package:kumparan_clone/src/domain/usecases/article/get_article_list.dart';

part 'article_watcher_event.dart';
part 'article_watcher_state.dart';
part 'article_watcher_bloc.freezed.dart';

class ArticleWatcherBloc extends Bloc<ArticleWatcherEvent, ArticleWatcherState> {
  ArticleWatcherBloc(this._getArticleList) : super(const ArticleWatcherState.initial()) {
    on<ArticleWatcherEvent>((event, emit) async {
      await event.map(
        fetchArticle: (_) async {
          emit(const ArticleWatcherState.loading());

          final result = await _getArticleList.execute();

          result.fold(
            (f) => emit(ArticleWatcherState.error(f.message)),
            (data) => emit(ArticleWatcherState.loaded(data)),
          );
        },
      );
    });
  }

  final GetArticleList _getArticleList;
  
}
