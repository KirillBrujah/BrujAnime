// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImagesWrapper _$ImagesWrapperFromJson(Map<String, dynamic> json) {
  return _ImagesWrapper.fromJson(json);
}

/// @nodoc
mixin _$ImagesWrapper {
  ImageModel? get jpg => throw _privateConstructorUsedError;
  ImageModel? get webp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagesWrapperCopyWith<ImagesWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesWrapperCopyWith<$Res> {
  factory $ImagesWrapperCopyWith(
          ImagesWrapper value, $Res Function(ImagesWrapper) then) =
      _$ImagesWrapperCopyWithImpl<$Res, ImagesWrapper>;
  @useResult
  $Res call({ImageModel? jpg, ImageModel? webp});

  $ImageModelCopyWith<$Res>? get jpg;
  $ImageModelCopyWith<$Res>? get webp;
}

/// @nodoc
class _$ImagesWrapperCopyWithImpl<$Res, $Val extends ImagesWrapper>
    implements $ImagesWrapperCopyWith<$Res> {
  _$ImagesWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jpg = freezed,
    Object? webp = freezed,
  }) {
    return _then(_value.copyWith(
      jpg: freezed == jpg
          ? _value.jpg
          : jpg // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      webp: freezed == webp
          ? _value.webp
          : webp // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageModelCopyWith<$Res>? get jpg {
    if (_value.jpg == null) {
      return null;
    }

    return $ImageModelCopyWith<$Res>(_value.jpg!, (value) {
      return _then(_value.copyWith(jpg: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageModelCopyWith<$Res>? get webp {
    if (_value.webp == null) {
      return null;
    }

    return $ImageModelCopyWith<$Res>(_value.webp!, (value) {
      return _then(_value.copyWith(webp: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ImagesWrapperImplCopyWith<$Res>
    implements $ImagesWrapperCopyWith<$Res> {
  factory _$$ImagesWrapperImplCopyWith(
          _$ImagesWrapperImpl value, $Res Function(_$ImagesWrapperImpl) then) =
      __$$ImagesWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ImageModel? jpg, ImageModel? webp});

  @override
  $ImageModelCopyWith<$Res>? get jpg;
  @override
  $ImageModelCopyWith<$Res>? get webp;
}

/// @nodoc
class __$$ImagesWrapperImplCopyWithImpl<$Res>
    extends _$ImagesWrapperCopyWithImpl<$Res, _$ImagesWrapperImpl>
    implements _$$ImagesWrapperImplCopyWith<$Res> {
  __$$ImagesWrapperImplCopyWithImpl(
      _$ImagesWrapperImpl _value, $Res Function(_$ImagesWrapperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jpg = freezed,
    Object? webp = freezed,
  }) {
    return _then(_$ImagesWrapperImpl(
      jpg: freezed == jpg
          ? _value.jpg
          : jpg // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      webp: freezed == webp
          ? _value.webp
          : webp // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImagesWrapperImpl extends _ImagesWrapper {
  const _$ImagesWrapperImpl({this.jpg, this.webp}) : super._();

  factory _$ImagesWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagesWrapperImplFromJson(json);

  @override
  final ImageModel? jpg;
  @override
  final ImageModel? webp;

  @override
  String toString() {
    return 'ImagesWrapper(jpg: $jpg, webp: $webp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesWrapperImpl &&
            (identical(other.jpg, jpg) || other.jpg == jpg) &&
            (identical(other.webp, webp) || other.webp == webp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, jpg, webp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagesWrapperImplCopyWith<_$ImagesWrapperImpl> get copyWith =>
      __$$ImagesWrapperImplCopyWithImpl<_$ImagesWrapperImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagesWrapperImplToJson(
      this,
    );
  }
}

abstract class _ImagesWrapper extends ImagesWrapper {
  const factory _ImagesWrapper(
      {final ImageModel? jpg, final ImageModel? webp}) = _$ImagesWrapperImpl;
  const _ImagesWrapper._() : super._();

  factory _ImagesWrapper.fromJson(Map<String, dynamic> json) =
      _$ImagesWrapperImpl.fromJson;

  @override
  ImageModel? get jpg;
  @override
  ImageModel? get webp;
  @override
  @JsonKey(ignore: true)
  _$$ImagesWrapperImplCopyWith<_$ImagesWrapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) {
  return _ImageModel.fromJson(json);
}

/// @nodoc
mixin _$ImageModel {
  @JsonKey(name: "image_url")
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "small_image_url")
  String? get smallImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "medium_image_url")
  String? get mediumImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "large_image_url")
  String? get largeImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "maximum_image_url")
  String? get maximumImageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageModelCopyWith<ImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageModelCopyWith<$Res> {
  factory $ImageModelCopyWith(
          ImageModel value, $Res Function(ImageModel) then) =
      _$ImageModelCopyWithImpl<$Res, ImageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "image_url") String imageUrl,
      @JsonKey(name: "small_image_url") String? smallImageUrl,
      @JsonKey(name: "medium_image_url") String? mediumImageUrl,
      @JsonKey(name: "large_image_url") String? largeImageUrl,
      @JsonKey(name: "maximum_image_url") String? maximumImageUrl});
}

/// @nodoc
class _$ImageModelCopyWithImpl<$Res, $Val extends ImageModel>
    implements $ImageModelCopyWith<$Res> {
  _$ImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? smallImageUrl = freezed,
    Object? mediumImageUrl = freezed,
    Object? largeImageUrl = freezed,
    Object? maximumImageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      smallImageUrl: freezed == smallImageUrl
          ? _value.smallImageUrl
          : smallImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumImageUrl: freezed == mediumImageUrl
          ? _value.mediumImageUrl
          : mediumImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      largeImageUrl: freezed == largeImageUrl
          ? _value.largeImageUrl
          : largeImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      maximumImageUrl: freezed == maximumImageUrl
          ? _value.maximumImageUrl
          : maximumImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageModelImplCopyWith<$Res>
    implements $ImageModelCopyWith<$Res> {
  factory _$$ImageModelImplCopyWith(
          _$ImageModelImpl value, $Res Function(_$ImageModelImpl) then) =
      __$$ImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "image_url") String imageUrl,
      @JsonKey(name: "small_image_url") String? smallImageUrl,
      @JsonKey(name: "medium_image_url") String? mediumImageUrl,
      @JsonKey(name: "large_image_url") String? largeImageUrl,
      @JsonKey(name: "maximum_image_url") String? maximumImageUrl});
}

/// @nodoc
class __$$ImageModelImplCopyWithImpl<$Res>
    extends _$ImageModelCopyWithImpl<$Res, _$ImageModelImpl>
    implements _$$ImageModelImplCopyWith<$Res> {
  __$$ImageModelImplCopyWithImpl(
      _$ImageModelImpl _value, $Res Function(_$ImageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? smallImageUrl = freezed,
    Object? mediumImageUrl = freezed,
    Object? largeImageUrl = freezed,
    Object? maximumImageUrl = freezed,
  }) {
    return _then(_$ImageModelImpl(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      smallImageUrl: freezed == smallImageUrl
          ? _value.smallImageUrl
          : smallImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumImageUrl: freezed == mediumImageUrl
          ? _value.mediumImageUrl
          : mediumImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      largeImageUrl: freezed == largeImageUrl
          ? _value.largeImageUrl
          : largeImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      maximumImageUrl: freezed == maximumImageUrl
          ? _value.maximumImageUrl
          : maximumImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageModelImpl implements _ImageModel {
  const _$ImageModelImpl(
      {@JsonKey(name: "image_url") required this.imageUrl,
      @JsonKey(name: "small_image_url") this.smallImageUrl,
      @JsonKey(name: "medium_image_url") this.mediumImageUrl,
      @JsonKey(name: "large_image_url") this.largeImageUrl,
      @JsonKey(name: "maximum_image_url") this.maximumImageUrl});

  factory _$ImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageModelImplFromJson(json);

  @override
  @JsonKey(name: "image_url")
  final String imageUrl;
  @override
  @JsonKey(name: "small_image_url")
  final String? smallImageUrl;
  @override
  @JsonKey(name: "medium_image_url")
  final String? mediumImageUrl;
  @override
  @JsonKey(name: "large_image_url")
  final String? largeImageUrl;
  @override
  @JsonKey(name: "maximum_image_url")
  final String? maximumImageUrl;

  @override
  String toString() {
    return 'ImageModel(imageUrl: $imageUrl, smallImageUrl: $smallImageUrl, mediumImageUrl: $mediumImageUrl, largeImageUrl: $largeImageUrl, maximumImageUrl: $maximumImageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageModelImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.smallImageUrl, smallImageUrl) ||
                other.smallImageUrl == smallImageUrl) &&
            (identical(other.mediumImageUrl, mediumImageUrl) ||
                other.mediumImageUrl == mediumImageUrl) &&
            (identical(other.largeImageUrl, largeImageUrl) ||
                other.largeImageUrl == largeImageUrl) &&
            (identical(other.maximumImageUrl, maximumImageUrl) ||
                other.maximumImageUrl == maximumImageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, smallImageUrl,
      mediumImageUrl, largeImageUrl, maximumImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageModelImplCopyWith<_$ImageModelImpl> get copyWith =>
      __$$ImageModelImplCopyWithImpl<_$ImageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageModelImplToJson(
      this,
    );
  }
}

abstract class _ImageModel implements ImageModel {
  const factory _ImageModel(
          {@JsonKey(name: "image_url") required final String imageUrl,
          @JsonKey(name: "small_image_url") final String? smallImageUrl,
          @JsonKey(name: "medium_image_url") final String? mediumImageUrl,
          @JsonKey(name: "large_image_url") final String? largeImageUrl,
          @JsonKey(name: "maximum_image_url") final String? maximumImageUrl}) =
      _$ImageModelImpl;

  factory _ImageModel.fromJson(Map<String, dynamic> json) =
      _$ImageModelImpl.fromJson;

  @override
  @JsonKey(name: "image_url")
  String get imageUrl;
  @override
  @JsonKey(name: "small_image_url")
  String? get smallImageUrl;
  @override
  @JsonKey(name: "medium_image_url")
  String? get mediumImageUrl;
  @override
  @JsonKey(name: "large_image_url")
  String? get largeImageUrl;
  @override
  @JsonKey(name: "maximum_image_url")
  String? get maximumImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$ImageModelImplCopyWith<_$ImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
