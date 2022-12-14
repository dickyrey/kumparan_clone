part of 'category_watcher_bloc.dart';

@freezed
class CategoryWatcherState with _$CategoryWatcherState {
  const factory CategoryWatcherState.initial() = _Initial;
  const factory CategoryWatcherState.loading() = _Loading;
  const factory CategoryWatcherState.error(String message) = _Error;
  const factory CategoryWatcherState.loaded(List<Category> categories) = _Loaded;
}
