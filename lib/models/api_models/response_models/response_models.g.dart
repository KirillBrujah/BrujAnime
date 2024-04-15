// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeList _$AnimeListFromJson(Map<String, dynamic> json) => AnimeList(
      data: (json['data'] as List<dynamic>)
          .map((e) => Anime.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : ApiPagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimeListToJson(AnimeList instance) => <String, dynamic>{
      'pagination': instance.pagination,
      'data': instance.data,
    };

AnimeRecommendationsList _$AnimeRecommendationsListFromJson(
        Map<String, dynamic> json) =>
    AnimeRecommendationsList(
      data: (json['data'] as List<dynamic>)
          .map((e) => AnimeRecommendation.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : ApiPagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimeRecommendationsListToJson(
        AnimeRecommendationsList instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'data': instance.data,
    };
