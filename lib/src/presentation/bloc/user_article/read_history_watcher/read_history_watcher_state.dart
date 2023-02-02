part of 'read_history_watcher_bloc.dart';

@freezed
class ReadHistoryWatcherState with _$ReadHistoryWatcherState {
  const factory ReadHistoryWatcherState.initial() = _Initial;
  const factory ReadHistoryWatcherState.loading() = _Loading;
  const factory ReadHistoryWatcherState.error(String msg) = _Error;
  const factory ReadHistoryWatcherState.loaded(List<Article> articleList) = _Loaded;
}
