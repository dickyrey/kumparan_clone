part of 'category_watcher_bloc.dart';

@freezed
class CategoryWatcherState with _$CategoryWatcherState {
  const factory CategoryWatcherState({
    required RequestState state,
    required String message,
    required List<Category> categories,
  }) = _Initial;
  factory CategoryWatcherState.initial() {
    return const CategoryWatcherState(
      state: RequestState.empty,
      message: '',
      categories: [],
    );
  }
  // const factory CategoryWatcherState.loading() = _Loading;
  // const factory CategoryWatcherState.error(String message) = _Error;
  // const factory CategoryWatcherState.loaded(List<Category> categories) = _Loaded;
}
