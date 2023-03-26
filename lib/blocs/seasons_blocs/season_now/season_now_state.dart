part of 'season_now_bloc.dart';

@freezed
class SeasonNowState with _$SeasonNowState {
  const SeasonNowState._();

  const factory SeasonNowState.initial() = _initial;
  const factory SeasonNowState.error(String message) = _error;

  const factory SeasonNowState.data({
    required List<Anime> list,
    ApiPagination? pagination,
  }) = _data;
}
