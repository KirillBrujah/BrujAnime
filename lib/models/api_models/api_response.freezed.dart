// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponse<T> _$ApiResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  switch (json['runtimeType']) {
    case 'data':
      return _ApiResponseData<T>.fromJson(json, fromJsonT);
    case 'error':
      return _ApiResponseError<T>.fromJson(json, fromJsonT);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ApiResponse',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ApiResponse<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(Object exception) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function(Object exception)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(Object exception)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiResponseData<T> value) data,
    required TResult Function(_ApiResponseError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiResponseData<T> value)? data,
    TResult? Function(_ApiResponseError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiResponseData<T> value)? data,
    TResult Function(_ApiResponseError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseCopyWith(
          ApiResponse<T> value, $Res Function(ApiResponse<T>) then) =
      _$ApiResponseCopyWithImpl<T, $Res, ApiResponse<T>>;
}

/// @nodoc
class _$ApiResponseCopyWithImpl<T, $Res, $Val extends ApiResponse<T>>
    implements $ApiResponseCopyWith<T, $Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ApiResponseDataCopyWith<T, $Res> {
  factory _$$_ApiResponseDataCopyWith(_$_ApiResponseData<T> value,
          $Res Function(_$_ApiResponseData<T>) then) =
      __$$_ApiResponseDataCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$_ApiResponseDataCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$_ApiResponseData<T>>
    implements _$$_ApiResponseDataCopyWith<T, $Res> {
  __$$_ApiResponseDataCopyWithImpl(
      _$_ApiResponseData<T> _value, $Res Function(_$_ApiResponseData<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_ApiResponseData<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$_ApiResponseData<T> implements _ApiResponseData<T> {
  const _$_ApiResponseData(this.data, {final String? $type})
      : $type = $type ?? 'data';

  factory _$_ApiResponseData.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_ApiResponseDataFromJson(json, fromJsonT);

  @override
  final T data;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiResponse<$T>.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponseData<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseDataCopyWith<T, _$_ApiResponseData<T>> get copyWith =>
      __$$_ApiResponseDataCopyWithImpl<T, _$_ApiResponseData<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(Object exception) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function(Object exception)? error,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(Object exception)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiResponseData<T> value) data,
    required TResult Function(_ApiResponseError<T> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiResponseData<T> value)? data,
    TResult? Function(_ApiResponseError<T> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiResponseData<T> value)? data,
    TResult Function(_ApiResponseError<T> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$_ApiResponseDataToJson<T>(this, toJsonT);
  }
}

abstract class _ApiResponseData<T> implements ApiResponse<T> {
  const factory _ApiResponseData(final T data) = _$_ApiResponseData<T>;

  factory _ApiResponseData.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_ApiResponseData<T>.fromJson;

  T get data;
  @JsonKey(ignore: true)
  _$$_ApiResponseDataCopyWith<T, _$_ApiResponseData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ApiResponseErrorCopyWith<T, $Res> {
  factory _$$_ApiResponseErrorCopyWith(_$_ApiResponseError<T> value,
          $Res Function(_$_ApiResponseError<T>) then) =
      __$$_ApiResponseErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Object exception});
}

/// @nodoc
class __$$_ApiResponseErrorCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$_ApiResponseError<T>>
    implements _$$_ApiResponseErrorCopyWith<T, $Res> {
  __$$_ApiResponseErrorCopyWithImpl(_$_ApiResponseError<T> _value,
      $Res Function(_$_ApiResponseError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$_ApiResponseError<T>(
      null == exception ? _value.exception : exception,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$_ApiResponseError<T> implements _ApiResponseError<T> {
  const _$_ApiResponseError(this.exception, {final String? $type})
      : $type = $type ?? 'error';

  factory _$_ApiResponseError.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_ApiResponseErrorFromJson(json, fromJsonT);

  @override
  final Object exception;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiResponse<$T>.error(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponseError<T> &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseErrorCopyWith<T, _$_ApiResponseError<T>> get copyWith =>
      __$$_ApiResponseErrorCopyWithImpl<T, _$_ApiResponseError<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(Object exception) error,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function(Object exception)? error,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(Object exception)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiResponseData<T> value) data,
    required TResult Function(_ApiResponseError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiResponseData<T> value)? data,
    TResult? Function(_ApiResponseError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiResponseData<T> value)? data,
    TResult Function(_ApiResponseError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$_ApiResponseErrorToJson<T>(this, toJsonT);
  }
}

abstract class _ApiResponseError<T> implements ApiResponse<T> {
  const factory _ApiResponseError(final Object exception) =
      _$_ApiResponseError<T>;

  factory _ApiResponseError.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_ApiResponseError<T>.fromJson;

  Object get exception;
  @JsonKey(ignore: true)
  _$$_ApiResponseErrorCopyWith<T, _$_ApiResponseError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
