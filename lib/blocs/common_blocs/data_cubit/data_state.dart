part of 'data_cubit.dart';

@freezed
class DataState<T> with _$DataState<T> {
  const factory DataState(List<T> data) = _DataState;
}