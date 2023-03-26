part of 'anime_recommendations_bloc.dart';

@freezed
class AnimeRecommendationsState with _$AnimeRecommendationsState {
  const AnimeRecommendationsState._();

  const factory AnimeRecommendationsState.initial() =
      _AnimeRecommendationsInitialState;
  const factory AnimeRecommendationsState.data({
    required List<AnimeRecommendation> list,
    required ApiPagination pagination,
  }) = _AnimeRecommendationsDataState;
  const factory AnimeRecommendationsState.error(String message) =
      _AnimeRecommendationsErrorState;

  ApiPagination? get pagination => maybeMap(
        orElse: () => null,
        data: (state) => state.pagination,
      );

  List<AnimeRecommendation> get list => maybeWhen(
        orElse: () => [],
        data: (list, _) => list,
      );

  bool get isLoading => maybeWhen(
        orElse: () => false,
        initial: () => true,
      );
}
