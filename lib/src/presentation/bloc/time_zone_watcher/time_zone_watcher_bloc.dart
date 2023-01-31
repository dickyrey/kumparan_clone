import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:kumparan_clone/src/common/enums.dart';
import 'package:kumparan_clone/src/domain/usecases/auth/get_time_zone.dart';

part 'time_zone_watcher_event.dart';
part 'time_zone_watcher_state.dart';
part 'time_zone_watcher_bloc.freezed.dart';

class TimeZoneWatcherBloc
    extends Bloc<TimeZoneWatcherEvent, TimeZoneWatcherState> {
  TimeZoneWatcherBloc(this._timeZone) : super(TimeZoneWatcherState.initial()) {
    on<TimeZoneWatcherEvent>((event, emit) async {
      await event.map(
        fetchTimeZone: (_) async {
          emit(state.copyWith(state: RequestState.loading));
          final timezone = await _timeZone.execute();
          timezone.fold(
            (f) {
              emit(
                state.copyWith(
                  state: RequestState.error,
                  message: f.message,
                ),
              );
            },
            (data) {
              String dateFormatting(DateTime date) {
                final dateFormat = DateFormat('yyyy-MM-dd HH:mm').format(date);
                return dateFormat;
              }
              emit(
                state.copyWith(
                  state: RequestState.loaded,
                  dateTime: dateFormatting(data.datetime),
                  unixtime: data.unixtime,
                  utcDateTime: dateFormatting(data.utcDatetime),
                ),
              );
            },
          );
        },
      );
    });
  }
  final GetTimeZone _timeZone;
}
