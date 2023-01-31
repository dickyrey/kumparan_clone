import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
            (f) => emit(
              state.copyWith(
                state: RequestState.error,
                message: f.message,
              ),
            ),
            (data) => emit(
              state.copyWith(
                state: RequestState.loaded,
                dateTime: data.first,
              ),
            ),
          );
        },
      );
    });
  }
  final GetTimeZone _timeZone;
}
