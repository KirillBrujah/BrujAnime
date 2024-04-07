part of 'anime_recommendations_bloc.dart';

@freezed
class AnimeRecommendationsState with _$AnimeRecommendationsState {
  const AnimeRecommendationsState._();

  const factory AnimeRecommendationsState.initial() =
      _AnimeRecommendationsInitialState;
  const factory AnimeRecommendationsState.loaded({
    required List<AnimeRecommendation> list,
    required ApiPagination pagination,
  }) = _AnimeRecommendationsLoadedState;
  const factory AnimeRecommendationsState.error(String message) =
      _AnimeRecommendationsErrorState;

  ApiPagination? get pagination => maybeMap(
        orElse: () => null,
        loaded: (state) => state.pagination,
      );

  List<AnimeRecommendation> get list => maybeWhen(
        orElse: () => [],
        loaded: (list, _) => list,
      );

  bool get isLoading => maybeWhen(
        orElse: () => false,
        initial: () => true,
      );
}
