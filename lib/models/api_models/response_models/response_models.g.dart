// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnimeResponseListImpl _$$AnimeResponseListImplFromJson(
        Map<String, dynamic> json) =>
    _$AnimeResponseListImpl(
      pagination:
          ApiPagination.fromJson(json['pagination'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>)
          .map((e) => Anime.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AnimeResponseListImplToJson(
        _$AnimeResponseListImpl instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'data': instance.data,
    };

_$ApiPaginationImpl _$$ApiPaginationImplFromJson(Map<String, dynamic> json) =>
    _$ApiPaginationImpl(
      lastVisiblePage: json['last_visible_page'] as int,
      hasNextPage: json['has_next_page'] as bool,
    );

Map<String, dynamic> _$$ApiPaginationImplToJson(_$ApiPaginationImpl instance) =>
    <String, dynamic>{
      'last_visible_page': instance.lastVisiblePage,
      'has_next_page': instance.hasNextPage,
    };

_$ApiPaginationItemsImpl _$$ApiPaginationItemsImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiPaginationItemsImpl(
      count: json['count'] as int? ?? 0,
      total: json['total'] as int? ?? 0,
      perPage: json['per_page'] as int? ?? 0,
    );

Map<String, dynamic> _$$ApiPaginationItemsImplToJson(
        _$ApiPaginationItemsImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'total': instance.total,
      'per_page': instance.perPage,
    };
