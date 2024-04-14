part of 'data_loading_cubit.dart';

@freezed
class DataLoadingState<T> with _$DataLoadingState<T> {
  const DataLoadingState._();

  const factory DataLoadingState.initial() = _initial;

  const factory DataLoadingState.error(String message) = _error;

  const factory DataLoadingState.loading() = _loading;

  const factory DataLoadingState.loaded(T data) = _loaded;

  bool get isInitial => maybeWhen(
        orElse: () => false,
        initial: () => true,
      );
}
