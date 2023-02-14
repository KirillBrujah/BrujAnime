part of 'top_airing_bloc.dart';

@freezed
class TopAiringState with _$TopAiringState {
  const factory TopAiringState.initial() = _TopAiringInitialState;
  const factory TopAiringState.data({
    required List<Anime> data,
  }) = _TopAiringDataState;
  const factory TopAiringState.error(String message) = _TopAiringErrorState;
}
