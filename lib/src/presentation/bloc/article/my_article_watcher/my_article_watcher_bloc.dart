import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/domain/entities/article.dart';
import 'package:kumparan_clone/src/domain/usecases/article/get_my_article_list.dart';

part 'my_article_watcher_event.dart';
part 'my_article_watcher_state.dart';
part 'my_article_watcher_bloc.freezed.dart';

class MyArticleWatcherBloc
    extends Bloc<MyArticleWatcherEvent, MyArticleWatcherState> {
  MyArticleWatcherBloc(this._myArticleList) : super(const _Initial()) {
    on<MyArticleWatcherEvent>((event, emit) async {
      await event.map(
        fetchArticle: (_) async {
          emit(const MyArticleWatcherState.loading());

          final result = await _myArticleList.execute();

          result.fold(
            (f) => emit(MyArticleWatcherState.error(f.message)),
            (data) => emit(MyArticleWatcherState.loaded(data)),
          );
        },
      );
    });
  }
  final GetMyArticleList _myArticleList;
}
