// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImagesWrapper _$$_ImagesWrapperFromJson(Map<String, dynamic> json) =>
    _$_ImagesWrapper(
      jpg: json['jpg'] == null
          ? null
          : ImageModel.fromJson(json['jpg'] as Map<String, dynamic>),
      webp: json['webp'] == null
          ? null
          : ImageModel.fromJson(json['webp'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ImagesWrapperToJson(_$_ImagesWrapper instance) =>
    <String, dynamic>{
      'jpg': instance.jpg,
      'webp': instance.webp,
    };

_$_ImageModel _$$_ImageModelFromJson(Map<String, dynamic> json) =>
    _$_ImageModel(
      imageUrl: json['image_url'] as String,
      smallImageUrl: json['small_image_url'] as String?,
      mediumImageUrl: json['medium_image_url'] as String?,
      largeImageUrl: json['large_image_url'] as String?,
      maximumImageUrl: json['maximum_image_url'] as String?,
    );

Map<String, dynamic> _$$_ImageModelToJson(_$_ImageModel instance) =>
    <String, dynamic>{
      'image_url': instance.imageUrl,
      'small_image_url': instance.smallImageUrl,
      'medium_image_url': instance.mediumImageUrl,
      'large_image_url': instance.largeImageUrl,
      'maximum_image_url': instance.maximumImageUrl,
    };
