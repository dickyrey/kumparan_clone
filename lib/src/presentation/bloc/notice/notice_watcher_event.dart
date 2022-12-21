part of 'notice_watcher_bloc.dart';

@freezed
class NoticeWatcherEvent with _$NoticeWatcherEvent {
  const factory NoticeWatcherEvent.fetchNotice() = _FetchNotice;
}
