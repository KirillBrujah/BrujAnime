// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiPagination _$$_ApiPaginationFromJson(Map<String, dynamic> json) =>
    _$_ApiPagination(
      lastVisiblePage: json['last_visible_page'] as int,
      hasNextPage: json['has_next_page'] as bool,
    );

Map<String, dynamic> _$$_ApiPaginationToJson(_$_ApiPagination instance) =>
    <String, dynamic>{
      'last_visible_page': instance.lastVisiblePage,
      'has_next_page': instance.hasNextPage,
    };

_$_ApiPaginationItems _$$_ApiPaginationItemsFromJson(
        Map<String, dynamic> json) =>
    _$_ApiPaginationItems(
      count: json['count'] as int? ?? 0,
      total: json['total'] as int? ?? 0,
      perPage: json['per_page'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ApiPaginationItemsToJson(
        _$_ApiPaginationItems instance) =>
    <String, dynamic>{
      'count': instance.count,
      'total': instance.total,
      'per_page': instance.perPage,
    };
