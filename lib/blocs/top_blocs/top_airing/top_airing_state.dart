part of 'top_airing_bloc.dart';

@freezed
class TopAiringState with _$TopAiringState {
  const TopAiringState._();

  const factory TopAiringState.initial() = _TopAiringInitialState;
  const factory TopAiringState.data({
    required List<Anime> list,
    required ApiPagination pagination,
  }) = _TopAiringDataState;
  const factory TopAiringState.error(String message) = _TopAiringErrorState;

  ApiPagination? get pagination => maybeMap(
        orElse: () => null,
        data: (state) => state.pagination,
      );
}
