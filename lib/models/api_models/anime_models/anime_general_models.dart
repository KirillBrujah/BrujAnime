import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_general_models.g.dart';

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
