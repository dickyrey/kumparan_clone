import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/domain/entities/article_detail.dart';
import 'package:kumparan_clone/src/domain/usecases/article/get_article_detail.dart';

part 'article_detail_watcher_event.dart';
part 'article_detail_watcher_state.dart';
part 'article_detail_watcher_bloc.freezed.dart';

class ArticleDetailWatcherBloc extends Bloc<ArticleDetailWatcherEvent, ArticleDetailWatcherState> {
  ArticleDetailWatcherBloc(this._articleDetail) : super(const ArticleDetailWatcherState.initial()) {
    on<ArticleDetailWatcherEvent>((event, emit) async {
      await event.map(
        fetchArticleDetail: (event) async {
          emit(const ArticleDetailWatcherState.loading());
          final id = event.url.replaceFirst(Const.unusedPath, '');

          final result = await _articleDetail.execute(id);

          result.fold(
            (f) => emit(ArticleDetailWatcherState.error(f.message)),
            (data) => emit(ArticleDetailWatcherState.loaded(data)),
          );
        },
      );
    });
  }
  final GetArticleDetail _articleDetail;
}
