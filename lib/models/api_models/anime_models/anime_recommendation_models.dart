import 'package:brujanime/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_recommendation_models.freezed.dart';
part 'anime_recommendation_models.g.dart';

@freezed
class AnimeRecommendation with _$AnimeRecommendation {
  const factory AnimeRecommendation({
    @JsonKey(name: "mal_id") required String id,
    required List<AnimeRecommendationEntry> entry,
    required String content,
    required DateTime date,
    required User user,
  }) = _AnimeRecommendation;

  factory AnimeRecommendation.fromJson(Map<String, dynamic> json) =>
      _$AnimeRecommendationFromJson(json);

  static AnimeRecommendation Function(Map<String, dynamic>) get converter =>
      _$AnimeRecommendationFromJson;
}

@freezed
class AnimeRecommendationEntry with _$AnimeRecommendationEntry {
  const factory AnimeRecommendationEntry({
    @JsonKey(name: "mal_id") required int id,
    ImagesWrapper? images,
    required String title,
    //
  }) = _AnimeRecommendationEntry;

  factory AnimeRecommendationEntry.fromJson(Map<String, dynamic> json) =>
      _$AnimeRecommendationEntryFromJson(json);
}
