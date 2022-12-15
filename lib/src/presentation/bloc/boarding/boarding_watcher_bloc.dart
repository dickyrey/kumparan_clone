import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/domain/entities/boarding.dart';
import 'package:kumparan_clone/src/domain/usecases/get_boarding_list.dart';

part 'boarding_watcher_event.dart';
part 'boarding_watcher_state.dart';
part 'boarding_watcher_bloc.freezed.dart';

class BoardingWatcherBloc
    extends Bloc<BoardingWatcherEvent, BoardingWatcherState> {
  final GetBoardingList _getBoardingList;
  BoardingWatcherBloc(this._getBoardingList)
      : super(const BoardingWatcherState.initial()) {
    on<BoardingWatcherEvent>(
      (event, emit) async {
        await event.map(
          fetchBoardingList: (_) async {
            emit(const BoardingWatcherState.loading());

            final result = await _getBoardingList.execute();

            result.fold(
              (f) => emit(BoardingWatcherState.error(f.message)),
              (data) => emit(BoardingWatcherState.loaded(data)),
            );
          },
        );
      },
    );
  }
}
