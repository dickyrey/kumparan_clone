part of 'read_history_watcher_bloc.dart';

@freezed
class ReadHistoryWatcherEvent with _$ReadHistoryWatcherEvent {
  const factory ReadHistoryWatcherEvent.fetchArticle() = _FetchArticle;
}
