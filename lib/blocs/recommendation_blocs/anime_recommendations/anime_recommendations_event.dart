part of 'anime_recommendations_bloc.dart';

@freezed
class AnimeRecommendationsEvent {
  const factory AnimeRecommendationsEvent.fetch() =
      _AnimeRecommendationsFetchEvent;
  const factory AnimeRecommendationsEvent.reset() =
      _AnimeRecommendationsResetEvent;
}
