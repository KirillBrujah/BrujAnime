// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_general_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnimeImpl _$$AnimeImplFromJson(Map<String, dynamic> json) => _$AnimeImpl(
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
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => Genre.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$AnimeImplToJson(_$AnimeImpl instance) =>
    <String, dynamic>{
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
      'genres': instance.genres,
    };

const _$AnimeTypeEnumMap = {
  AnimeType.tv: 'TV',
  AnimeType.movie: 'Movie',
  AnimeType.ova: 'OVA',
  AnimeType.special: 'Special',
  AnimeType.ona: 'ONA',
  AnimeType.music: 'Music',
};

_$AnimeTitleImpl _$$AnimeTitleImplFromJson(Map<String, dynamic> json) =>
    _$AnimeTitleImpl(
      json['title'] as String,
    );

Map<String, dynamic> _$$AnimeTitleImplToJson(_$AnimeTitleImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
    };

_$AnimeAiredImpl _$$AnimeAiredImplFromJson(Map<String, dynamic> json) =>
    _$AnimeAiredImpl(
      DateTime.parse(json['from'] as String),
      DateTime.parse(json['to'] as String),
    );

Map<String, dynamic> _$$AnimeAiredImplToJson(_$AnimeAiredImpl instance) =>
    <String, dynamic>{
      'from': instance.from.toIso8601String(),
      'to': instance.to.toIso8601String(),
    };

_$GenreImpl _$$GenreImplFromJson(Map<String, dynamic> json) => _$GenreImpl(
      id: json['mal_id'] as int,
      type: $enumDecode(_$ArtworkTypesEnumMap, json['type']),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$GenreImplToJson(_$GenreImpl instance) =>
    <String, dynamic>{
      'mal_id': instance.id,
      'type': _$ArtworkTypesEnumMap[instance.type]!,
      'name': instance.name,
    };

const _$ArtworkTypesEnumMap = {
  ArtworkTypes.anime: 'anime',
  ArtworkTypes.manga: 'manga',
};
