import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/domain/entities/article.dart';
import 'package:kumparan_clone/src/domain/usecases/get_article_list.dart';

part 'new_article_watcher_event.dart';
part 'new_article_watcher_state.dart';
part 'new_article_watcher_bloc.freezed.dart';

class NewArticleWatcherBloc
    extends Bloc<NewArticleWatcherEvent, NewArticleWatcherState> {
  final GetArticleList _getArticleList;
  NewArticleWatcherBloc(this._getArticleList) : super(const NewArticleWatcherState.initial()) {
    on<NewArticleWatcherEvent>((event, emit) async {
      await event.map(
        fetchNewArticle: (_) async {
          emit(const NewArticleWatcherState.loading());

          final result = await _getArticleList.execute();

          result.fold(
            (f) => emit(NewArticleWatcherState.error(f.message)),
            (data) => emit(NewArticleWatcherState.loaded(data)),
          );
        },
      );
    });
  }
}
