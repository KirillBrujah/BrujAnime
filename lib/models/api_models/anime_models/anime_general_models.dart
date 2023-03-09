// ignore_for_file: invalid_annotation_target

import 'package:brujanime/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_general_models.freezed.dart';
part 'anime_general_models.g.dart';

@freezed
class Anime with _$Anime {
  const Anime._();

  const factory Anime({
    @JsonKey(name: "mal_id") required int id,
    ImagesWrapper? images,
    // TODO: trailer

    // TODO: List<Title>
    String? title,
    @JsonKey(name: "title_english") String? titleEnglish,
    @JsonKey(name: "title_japanese") String? titleJapanese,
    required AnimeType type,
    // TODO: source

    @Default(0) int episodes,
    // TODO: AnimeStatuses
    required bool airing,
    // TODO: Aired
    required String duration,

    // TODO: rating
    @Default(0) double score,
    @Default(0) int favorites,
    @Default(0) int scoredBy,
    @Default(0) int rank,
    @Default(0) int popularity,
    @Default("") String synopsis,
    @Default("") String background,

    // TODO: List<AnimeStudio>
    // TODO: List<AnimeGenre>
  }) = _Anime;

  factory Anime.fromJson(Map<String, dynamic> json) => _$AnimeFromJson(json);

  String get simpleTitle => title ?? titleEnglish ?? titleJapanese ?? "";

  static Anime Function(Map<String, dynamic>) get converter => _$AnimeFromJson;
}

@freezed
class AnimeTitle with _$AnimeTitle {
  const factory AnimeTitle(
    String title,
    // TODO: type
  ) = _AnimeTitle;

  factory AnimeTitle.fromJson(Map<String, dynamic> json) =>
      _$AnimeTitleFromJson(json);
}

@freezed
class AnimeAired with _$AnimeAired {
  const factory AnimeAired(
    DateTime from,
    DateTime to,
  ) = _AnimeAired;

  factory AnimeAired.fromJson(Map<String, dynamic> json) =>
      _$AnimeAiredFromJson(json);
}

/*
@JsonSerializable()
class Anime {
  @JsonKey(name: "mal_id")
  final int id;
  // TODO: images
  // TODO: trailer

  // TODO: List<Title>
  final String? title;
  @JsonKey(name: "title_english")
  final String? titleEnglish;
  @JsonKey(name: "title_japanese")
  final String? titleJapanese;

  // TODO: type
  // TODO: source

  final int episodes;
  // TODO: AnimeStatuses
  final bool airing;
  // TODO: Aired
  final String duration;

  // TODO: rating
  final int score;
  final int scoredBy;
  final int rank;
  final int popularity;

  final String synopsis;
  final String background;

  // TODO: List<AnimeStudio>
  // TODO: List<AnimeGenre>

  Anime({
    required this.id,
    this.title,
    this.titleEnglish,
    this.titleJapanese,
    this.episodes = 0,
    required this.airing,
    required this.duration,
    this.score = 0,
    this.scoredBy = 0,
    this.rank = 0,
    this.popularity = 0,
    this.synopsis = "",
    this.background = "",
  });
}

@JsonSerializable()
class AnimeTitle {
  final String title;
  // TODO: type

  AnimeTitle(this.title);
}

@JsonSerializable()
class AnimeAired {
  final DateTime from;
  final DateTime to;

  AnimeAired(this.from, this.to);
}
*/
