// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_models.freezed.dart';
part 'image_models.g.dart';

@freezed
class ImagesWrapper with _$ImagesWrapper {
  const ImagesWrapper._();

  const factory ImagesWrapper({
    ImageModel? jpg,
    ImageModel? webp,
  }) = _ImagesWrapper;

  factory ImagesWrapper.fromJson(Map<String, dynamic> json) =>
      _$ImagesWrapperFromJson(json);

  String? get maxSizeImage =>
      jpg?.maximumImageUrl ??
      webp?.maximumImageUrl ??
      jpg?.largeImageUrl ??
      webp?.largeImageUrl ??
      jpg?.mediumImageUrl ??
      webp?.mediumImageUrl ??
      jpg?.imageUrl;
}

@freezed
class ImageModel with _$ImageModel {
  const factory ImageModel({
    @JsonKey(name: "image_url") required String imageUrl,
    @JsonKey(name: "small_image_url") String? smallImageUrl,
    @JsonKey(name: "medium_image_url") String? mediumImageUrl,
    @JsonKey(name: "large_image_url") String? largeImageUrl,
    @JsonKey(name: "maximum_image_url") String? maximumImageUrl,
  }) = _ImageModel;

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);
}
