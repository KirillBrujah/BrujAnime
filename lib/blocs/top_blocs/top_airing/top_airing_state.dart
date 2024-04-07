part of 'top_airing_bloc.dart';

@freezed
class TopAiringState with _$TopAiringState {
  const TopAiringState._();

  const factory TopAiringState.initial() = _TopAiringInitialState;
  const factory TopAiringState.loaded({
    required List<Anime> list,
    required ApiPagination pagination,
  }) = _TopAiringLoadedState;
  const factory TopAiringState.error(String message) = _TopAiringErrorState;

  ApiPagination? get pagination => maybeMap(
        orElse: () => null,
        loaded: (state) => state.pagination,
      );
}
