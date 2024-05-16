// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_recommendation_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnimeRecommendationImpl _$$AnimeRecommendationImplFromJson(
        Map<String, dynamic> json) =>
    _$AnimeRecommendationImpl(
      id: json['mal_id'] as String,
      entry: (json['entry'] as List<dynamic>)
          .map((e) =>
              AnimeRecommendationEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      content: json['content'] as String,
      date: DateTime.parse(json['date'] as String),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AnimeRecommendationImplToJson(
        _$AnimeRecommendationImpl instance) =>
    <String, dynamic>{
      'mal_id': instance.id,
      'entry': instance.entry,
      'content': instance.content,
      'date': instance.date.toIso8601String(),
      'user': instance.user,
    };

_$AnimeRecommendationEntryImpl _$$AnimeRecommendationEntryImplFromJson(
        Map<String, dynamic> json) =>
    _$AnimeRecommendationEntryImpl(
      id: (json['mal_id'] as num).toInt(),
      images: json['images'] == null
          ? null
          : ImagesWrapper.fromJson(json['images'] as Map<String, dynamic>),
      title: json['title'] as String,
    );

Map<String, dynamic> _$$AnimeRecommendationEntryImplToJson(
        _$AnimeRecommendationEntryImpl instance) =>
    <String, dynamic>{
      'mal_id': instance.id,
      'images': instance.images,
      'title': instance.title,
    };
