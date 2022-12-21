part of 'notice_watcher_bloc.dart';

@freezed
class NoticeWatcherState with _$NoticeWatcherState {
  const factory NoticeWatcherState.initial() = _Initial;
  const factory NoticeWatcherState.loading() = _Loading;
  const factory NoticeWatcherState.error(String message) = _Error;
  const factory NoticeWatcherState.loaded(List<Notice> noticeList) = _Loaded;
}
