// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_general_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Anime _$AnimeFromJson(Map<String, dynamic> json) => Anime(
      id: json['mal_id'] as int,
      title: json['title'] as String?,
      titleEnglish: json['title_english'] as String?,
      titleJapanese: json['title_japanese'] as String?,
      episodes: json['episodes'] as int? ?? 0,
      airing: json['airing'] as bool,
      duration: json['duration'] as String,
      score: json['score'] as int? ?? 0,
      scoredBy: json['scoredBy'] as int? ?? 0,
      rank: json['rank'] as int? ?? 0,
      popularity: json['popularity'] as int? ?? 0,
      synopsis: json['synopsis'] as String? ?? "",
      background: json['background'] as String? ?? "",
    );

Map<String, dynamic> _$AnimeToJson(Anime instance) => <String, dynamic>{
      'mal_id': instance.id,
      'title': instance.title,
      'title_english': instance.titleEnglish,
      'title_japanese': instance.titleJapanese,
      'episodes': instance.episodes,
      'airing': instance.airing,
      'duration': instance.duration,
      'score': instance.score,
      'scoredBy': instance.scoredBy,
      'rank': instance.rank,
      'popularity': instance.popularity,
      'synopsis': instance.synopsis,
      'background': instance.background,
    };

AnimeTitle _$AnimeTitleFromJson(Map<String, dynamic> json) => AnimeTitle(
      json['title'] as String,
    );

Map<String, dynamic> _$AnimeTitleToJson(AnimeTitle instance) =>
    <String, dynamic>{
      'title': instance.title,
    };

AnimeAired _$AnimeAiredFromJson(Map<String, dynamic> json) => AnimeAired(
      DateTime.parse(json['from'] as String),
      DateTime.parse(json['to'] as String),
    );

Map<String, dynamic> _$AnimeAiredToJson(AnimeAired instance) =>
    <String, dynamic>{
      'from': instance.from.toIso8601String(),
      'to': instance.to.toIso8601String(),
    };
