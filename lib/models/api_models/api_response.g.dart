// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiResponseData<T> _$$_ApiResponseDataFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_ApiResponseData<T>(
      fromJsonT(json['data']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_ApiResponseDataToJson<T>(
  _$_ApiResponseData<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': toJsonT(instance.data),
      'runtimeType': instance.$type,
    };

_$_ApiResponseError<T> _$$_ApiResponseErrorFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_ApiResponseError<T>(
      json['exception'] as Object,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_ApiResponseErrorToJson<T>(
  _$_ApiResponseError<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'exception': instance.exception,
      'runtimeType': instance.$type,
    };
