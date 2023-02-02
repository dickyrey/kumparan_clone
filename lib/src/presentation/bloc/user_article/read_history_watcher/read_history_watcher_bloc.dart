import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/domain/entities/article.dart';
import 'package:kumparan_clone/src/domain/usecases/user_article/history_article.dart';

part 'read_history_watcher_event.dart';
part 'read_history_watcher_state.dart';
part 'read_history_watcher_bloc.freezed.dart';

class ReadHistoryWatcherBloc
    extends Bloc<ReadHistoryWatcherEvent, ReadHistoryWatcherState> {
  ReadHistoryWatcherBloc(this._history) : super(const _Initial()) {
    on<ReadHistoryWatcherEvent>((event, emit) async {
      await event.map(
        fetchArticle: (_) async {
          emit(const ReadHistoryWatcherState.loading());
          final result = await _history.execute();
          result.fold(
            (f) => emit(ReadHistoryWatcherState.error(f.message)),
            (data) => emit(ReadHistoryWatcherState.loaded(data)),
          );
        },
      );
    });
  }
  final ReadHistory _history;
}
