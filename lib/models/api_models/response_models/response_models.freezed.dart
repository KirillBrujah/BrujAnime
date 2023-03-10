// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiResponse<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(Object exception) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(Object exception)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Object exception)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiResponseSuccess<T> value) success,
    required TResult Function(_ApiResponseError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiResponseSuccess<T> value)? success,
    TResult? Function(_ApiResponseError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiResponseSuccess<T> value)? success,
    TResult Function(_ApiResponseError<T> value)? error,
    required TResult orElse(),
  }) =>
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
abstract class _$$_ApiResponseSuccessCopyWith<T, $Res> {
  factory _$$_ApiResponseSuccessCopyWith(_$_ApiResponseSuccess<T> value,
          $Res Function(_$_ApiResponseSuccess<T>) then) =
      __$$_ApiResponseSuccessCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$_ApiResponseSuccessCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$_ApiResponseSuccess<T>>
    implements _$$_ApiResponseSuccessCopyWith<T, $Res> {
  __$$_ApiResponseSuccessCopyWithImpl(_$_ApiResponseSuccess<T> _value,
      $Res Function(_$_ApiResponseSuccess<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_ApiResponseSuccess<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_ApiResponseSuccess<T> extends _ApiResponseSuccess<T> {
  const _$_ApiResponseSuccess(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'ApiResponse<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponseSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseSuccessCopyWith<T, _$_ApiResponseSuccess<T>> get copyWith =>
      __$$_ApiResponseSuccessCopyWithImpl<T, _$_ApiResponseSuccess<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(Object exception) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(Object exception)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Object exception)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiResponseSuccess<T> value) success,
    required TResult Function(_ApiResponseError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiResponseSuccess<T> value)? success,
    TResult? Function(_ApiResponseError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiResponseSuccess<T> value)? success,
    TResult Function(_ApiResponseError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ApiResponseSuccess<T> extends ApiResponse<T> {
  const factory _ApiResponseSuccess(final T data) = _$_ApiResponseSuccess<T>;
  const _ApiResponseSuccess._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$_ApiResponseSuccessCopyWith<T, _$_ApiResponseSuccess<T>> get copyWith =>
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

class _$_ApiResponseError<T> extends _ApiResponseError<T> {
  const _$_ApiResponseError(this.exception) : super._();

  @override
  final Object exception;

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
    required TResult Function(T data) success,
    required TResult Function(Object exception) error,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(Object exception)? error,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
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
    required TResult Function(_ApiResponseSuccess<T> value) success,
    required TResult Function(_ApiResponseError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiResponseSuccess<T> value)? success,
    TResult? Function(_ApiResponseError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiResponseSuccess<T> value)? success,
    TResult Function(_ApiResponseError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ApiResponseError<T> extends ApiResponse<T> {
  const factory _ApiResponseError(final Object exception) =
      _$_ApiResponseError<T>;
  const _ApiResponseError._() : super._();

  Object get exception;
  @JsonKey(ignore: true)
  _$$_ApiResponseErrorCopyWith<T, _$_ApiResponseError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiPagination _$ApiPaginationFromJson(Map<String, dynamic> json) {
  return _ApiPagination.fromJson(json);
}

/// @nodoc
mixin _$ApiPagination {
  @JsonKey(name: "last_visible_page")
  int get lastVisiblePage => throw _privateConstructorUsedError;
  @JsonKey(name: "has_next_page")
  bool get hasNextPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiPaginationCopyWith<ApiPagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiPaginationCopyWith<$Res> {
  factory $ApiPaginationCopyWith(
          ApiPagination value, $Res Function(ApiPagination) then) =
      _$ApiPaginationCopyWithImpl<$Res, ApiPagination>;
  @useResult
  $Res call(
      {@JsonKey(name: "last_visible_page") int lastVisiblePage,
      @JsonKey(name: "has_next_page") bool hasNextPage});
}

/// @nodoc
class _$ApiPaginationCopyWithImpl<$Res, $Val extends ApiPagination>
    implements $ApiPaginationCopyWith<$Res> {
  _$ApiPaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastVisiblePage = null,
    Object? hasNextPage = null,
  }) {
    return _then(_value.copyWith(
      lastVisiblePage: null == lastVisiblePage
          ? _value.lastVisiblePage
          : lastVisiblePage // ignore: cast_nullable_to_non_nullable
              as int,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiPaginationCopyWith<$Res>
    implements $ApiPaginationCopyWith<$Res> {
  factory _$$_ApiPaginationCopyWith(
          _$_ApiPagination value, $Res Function(_$_ApiPagination) then) =
      __$$_ApiPaginationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "last_visible_page") int lastVisiblePage,
      @JsonKey(name: "has_next_page") bool hasNextPage});
}

/// @nodoc
class __$$_ApiPaginationCopyWithImpl<$Res>
    extends _$ApiPaginationCopyWithImpl<$Res, _$_ApiPagination>
    implements _$$_ApiPaginationCopyWith<$Res> {
  __$$_ApiPaginationCopyWithImpl(
      _$_ApiPagination _value, $Res Function(_$_ApiPagination) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastVisiblePage = null,
    Object? hasNextPage = null,
  }) {
    return _then(_$_ApiPagination(
      lastVisiblePage: null == lastVisiblePage
          ? _value.lastVisiblePage
          : lastVisiblePage // ignore: cast_nullable_to_non_nullable
              as int,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiPagination implements _ApiPagination {
  const _$_ApiPagination(
      {@JsonKey(name: "last_visible_page") required this.lastVisiblePage,
      @JsonKey(name: "has_next_page") required this.hasNextPage});

  factory _$_ApiPagination.fromJson(Map<String, dynamic> json) =>
      _$$_ApiPaginationFromJson(json);

  @override
  @JsonKey(name: "last_visible_page")
  final int lastVisiblePage;
  @override
  @JsonKey(name: "has_next_page")
  final bool hasNextPage;

  @override
  String toString() {
    return 'ApiPagination(lastVisiblePage: $lastVisiblePage, hasNextPage: $hasNextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiPagination &&
            (identical(other.lastVisiblePage, lastVisiblePage) ||
                other.lastVisiblePage == lastVisiblePage) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lastVisiblePage, hasNextPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiPaginationCopyWith<_$_ApiPagination> get copyWith =>
      __$$_ApiPaginationCopyWithImpl<_$_ApiPagination>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiPaginationToJson(
      this,
    );
  }
}

abstract class _ApiPagination implements ApiPagination {
  const factory _ApiPagination(
      {@JsonKey(name: "last_visible_page")
          required final int lastVisiblePage,
      @JsonKey(name: "has_next_page")
          required final bool hasNextPage}) = _$_ApiPagination;

  factory _ApiPagination.fromJson(Map<String, dynamic> json) =
      _$_ApiPagination.fromJson;

  @override
  @JsonKey(name: "last_visible_page")
  int get lastVisiblePage;
  @override
  @JsonKey(name: "has_next_page")
  bool get hasNextPage;
  @override
  @JsonKey(ignore: true)
  _$$_ApiPaginationCopyWith<_$_ApiPagination> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiPaginationItems _$ApiPaginationItemsFromJson(Map<String, dynamic> json) {
  return _ApiPaginationItems.fromJson(json);
}

/// @nodoc
mixin _$ApiPaginationItems {
  int get count => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int get perPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiPaginationItemsCopyWith<ApiPaginationItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiPaginationItemsCopyWith<$Res> {
  factory $ApiPaginationItemsCopyWith(
          ApiPaginationItems value, $Res Function(ApiPaginationItems) then) =
      _$ApiPaginationItemsCopyWithImpl<$Res, ApiPaginationItems>;
  @useResult
  $Res call({int count, int total, @JsonKey(name: "per_page") int perPage});
}

/// @nodoc
class _$ApiPaginationItemsCopyWithImpl<$Res, $Val extends ApiPaginationItems>
    implements $ApiPaginationItemsCopyWith<$Res> {
  _$ApiPaginationItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? total = null,
    Object? perPage = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiPaginationItemsCopyWith<$Res>
    implements $ApiPaginationItemsCopyWith<$Res> {
  factory _$$_ApiPaginationItemsCopyWith(_$_ApiPaginationItems value,
          $Res Function(_$_ApiPaginationItems) then) =
      __$$_ApiPaginationItemsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, int total, @JsonKey(name: "per_page") int perPage});
}

/// @nodoc
class __$$_ApiPaginationItemsCopyWithImpl<$Res>
    extends _$ApiPaginationItemsCopyWithImpl<$Res, _$_ApiPaginationItems>
    implements _$$_ApiPaginationItemsCopyWith<$Res> {
  __$$_ApiPaginationItemsCopyWithImpl(
      _$_ApiPaginationItems _value, $Res Function(_$_ApiPaginationItems) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? total = null,
    Object? perPage = null,
  }) {
    return _then(_$_ApiPaginationItems(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiPaginationItems implements _ApiPaginationItems {
  const _$_ApiPaginationItems(
      {this.count = 0,
      this.total = 0,
      @JsonKey(name: "per_page") this.perPage = 0});

  factory _$_ApiPaginationItems.fromJson(Map<String, dynamic> json) =>
      _$$_ApiPaginationItemsFromJson(json);

  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final int total;
  @override
  @JsonKey(name: "per_page")
  final int perPage;

  @override
  String toString() {
    return 'ApiPaginationItems(count: $count, total: $total, perPage: $perPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiPaginationItems &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, total, perPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiPaginationItemsCopyWith<_$_ApiPaginationItems> get copyWith =>
      __$$_ApiPaginationItemsCopyWithImpl<_$_ApiPaginationItems>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiPaginationItemsToJson(
      this,
    );
  }
}

abstract class _ApiPaginationItems implements ApiPaginationItems {
  const factory _ApiPaginationItems(
      {final int count,
      final int total,
      @JsonKey(name: "per_page") final int perPage}) = _$_ApiPaginationItems;

  factory _ApiPaginationItems.fromJson(Map<String, dynamic> json) =
      _$_ApiPaginationItems.fromJson;

  @override
  int get count;
  @override
  int get total;
  @override
  @JsonKey(name: "per_page")
  int get perPage;
  @override
  @JsonKey(ignore: true)
  _$$_ApiPaginationItemsCopyWith<_$_ApiPaginationItems> get copyWith =>
      throw _privateConstructorUsedError;
}
