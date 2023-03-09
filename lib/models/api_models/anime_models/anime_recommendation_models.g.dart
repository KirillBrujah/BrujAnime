// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_recommendation_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnimeRecommendation _$$_AnimeRecommendationFromJson(
        Map<String, dynamic> json) =>
    _$_AnimeRecommendation(
      id: json['mal_id'] as String,
      entry: (json['entry'] as List<dynamic>)
          .map((e) =>
              AnimeRecommendationEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      content: json['content'] as String,
      date: DateTime.parse(json['date'] as String),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AnimeRecommendationToJson(
        _$_AnimeRecommendation instance) =>
    <String, dynamic>{
      'mal_id': instance.id,
      'entry': instance.entry,
      'content': instance.content,
      'date': instance.date.toIso8601String(),
      'user': instance.user,
    };

_$_AnimeRecommendationEntry _$$_AnimeRecommendationEntryFromJson(
        Map<String, dynamic> json) =>
    _$_AnimeRecommendationEntry(
      id: json['mal_id'] as int,
      images: json['images'] == null
          ? null
          : ImagesWrapper.fromJson(json['images'] as Map<String, dynamic>),
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_AnimeRecommendationEntryToJson(
        _$_AnimeRecommendationEntry instance) =>
    <String, dynamic>{
      'mal_id': instance.id,
      'images': instance.images,
      'title': instance.title,
    };
