import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/domain/entities/notice.dart';
import 'package:kumparan_clone/src/domain/usecases/get_notice_list.dart';

part 'notice_watcher_event.dart';
part 'notice_watcher_state.dart';
part 'notice_watcher_bloc.freezed.dart';

class NoticeWatcherBloc extends Bloc<NoticeWatcherEvent, NoticeWatcherState> {
  final GetNoticeList _getNoticeList;
  NoticeWatcherBloc(this._getNoticeList)
      : super(const NoticeWatcherState.initial()) {
    on<NoticeWatcherEvent>((event, emit) async {
      emit(const NoticeWatcherState.loading());

      final result = await _getNoticeList.execute();

      result.fold(
        (f) => emit(NoticeWatcherState.error(f.message)),
        (data) => emit(NoticeWatcherState.loaded(data)),
      );
    });
  }
}
