// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_general_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Anime _$$_AnimeFromJson(Map<String, dynamic> json) => _$_Anime(
      id: json['mal_id'] as int,
      images: json['images'] == null
          ? null
          : ImagesWrapper.fromJson(json['images'] as Map<String, dynamic>),
      title: json['title'] as String?,
      titleEnglish: json['title_english'] as String?,
      titleJapanese: json['title_japanese'] as String?,
      type: $enumDecode(_$AnimeTypeEnumMap, json['type']),
      episodes: json['episodes'] as int? ?? 0,
      airing: json['airing'] as bool,
      duration: json['duration'] as String,
      score: (json['score'] as num?)?.toDouble() ?? 0,
      favorites: json['favorites'] as int? ?? 0,
      scoredBy: json['scoredBy'] as int? ?? 0,
      rank: json['rank'] as int? ?? 0,
      popularity: json['popularity'] as int? ?? 0,
      synopsis: json['synopsis'] as String? ?? "",
      background: json['background'] as String? ?? "",
    );

Map<String, dynamic> _$$_AnimeToJson(_$_Anime instance) => <String, dynamic>{
      'mal_id': instance.id,
      'images': instance.images,
      'title': instance.title,
      'title_english': instance.titleEnglish,
      'title_japanese': instance.titleJapanese,
      'type': _$AnimeTypeEnumMap[instance.type]!,
      'episodes': instance.episodes,
      'airing': instance.airing,
      'duration': instance.duration,
      'score': instance.score,
      'favorites': instance.favorites,
      'scoredBy': instance.scoredBy,
      'rank': instance.rank,
      'popularity': instance.popularity,
      'synopsis': instance.synopsis,
      'background': instance.background,
    };

const _$AnimeTypeEnumMap = {
  AnimeType.tv: 'TV',
  AnimeType.movie: 'Movie',
  AnimeType.ova: 'OVA',
  AnimeType.special: 'Special',
  AnimeType.ona: 'ONA',
  AnimeType.music: 'Music',
};

_$_AnimeTitle _$$_AnimeTitleFromJson(Map<String, dynamic> json) =>
    _$_AnimeTitle(
      json['title'] as String,
    );

Map<String, dynamic> _$$_AnimeTitleToJson(_$_AnimeTitle instance) =>
    <String, dynamic>{
      'title': instance.title,
    };

_$_AnimeAired _$$_AnimeAiredFromJson(Map<String, dynamic> json) =>
    _$_AnimeAired(
      DateTime.parse(json['from'] as String),
      DateTime.parse(json['to'] as String),
    );

Map<String, dynamic> _$$_AnimeAiredToJson(_$_AnimeAired instance) =>
    <String, dynamic>{
      'from': instance.from.toIso8601String(),
      'to': instance.to.toIso8601String(),
    };
