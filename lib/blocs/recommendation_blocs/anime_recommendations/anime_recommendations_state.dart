part of 'anime_recommendations_bloc.dart';

@freezed
class AnimeRecommendationsState with _$AnimeRecommendationsState {
  const AnimeRecommendationsState._();

  const factory AnimeRecommendationsState.initial() =
      _AnimeRecommendationsInitialState;
  const factory AnimeRecommendationsState.data({
    required List<AnimeRecommendation> data,
    required ApiPagination pagination,
  }) = _AnimeRecommendationsDataState;
  const factory AnimeRecommendationsState.error(String message) =
      _AnimeRecommendationsErrorState;

  ApiPagination? get pagination => maybeMap(
        orElse: () => null,
        data: (state) => state.pagination,
      );

  List<AnimeRecommendation> get data => maybeWhen(
        orElse: () => [],
        data: (data, _) => data,
      );

  bool get isLoading => maybeWhen(
        orElse: () => false,
        initial: () => true,
      );
}
