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
abstract class _$$ApiResponseSuccessImplCopyWith<T, $Res> {
  factory _$$ApiResponseSuccessImplCopyWith(_$ApiResponseSuccessImpl<T> value,
          $Res Function(_$ApiResponseSuccessImpl<T>) then) =
      __$$ApiResponseSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ApiResponseSuccessImplCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$ApiResponseSuccessImpl<T>>
    implements _$$ApiResponseSuccessImplCopyWith<T, $Res> {
  __$$ApiResponseSuccessImplCopyWithImpl(_$ApiResponseSuccessImpl<T> _value,
      $Res Function(_$ApiResponseSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ApiResponseSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ApiResponseSuccessImpl<T> extends _ApiResponseSuccess<T> {
  const _$ApiResponseSuccessImpl(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'ApiResponse<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseSuccessImplCopyWith<T, _$ApiResponseSuccessImpl<T>>
      get copyWith => __$$ApiResponseSuccessImplCopyWithImpl<T,
          _$ApiResponseSuccessImpl<T>>(this, _$identity);

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
  const factory _ApiResponseSuccess(final T data) = _$ApiResponseSuccessImpl<T>;
  const _ApiResponseSuccess._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$ApiResponseSuccessImplCopyWith<T, _$ApiResponseSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiResponseErrorImplCopyWith<T, $Res> {
  factory _$$ApiResponseErrorImplCopyWith(_$ApiResponseErrorImpl<T> value,
          $Res Function(_$ApiResponseErrorImpl<T>) then) =
      __$$ApiResponseErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Object exception});
}

/// @nodoc
class __$$ApiResponseErrorImplCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$ApiResponseErrorImpl<T>>
    implements _$$ApiResponseErrorImplCopyWith<T, $Res> {
  __$$ApiResponseErrorImplCopyWithImpl(_$ApiResponseErrorImpl<T> _value,
      $Res Function(_$ApiResponseErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$ApiResponseErrorImpl<T>(
      null == exception ? _value.exception : exception,
    ));
  }
}

/// @nodoc

class _$ApiResponseErrorImpl<T> extends _ApiResponseError<T> {
  const _$ApiResponseErrorImpl(this.exception) : super._();

  @override
  final Object exception;

  @override
  String toString() {
    return 'ApiResponse<$T>.error(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseErrorImpl<T> &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseErrorImplCopyWith<T, _$ApiResponseErrorImpl<T>> get copyWith =>
      __$$ApiResponseErrorImplCopyWithImpl<T, _$ApiResponseErrorImpl<T>>(
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
      _$ApiResponseErrorImpl<T>;
  const _ApiResponseError._() : super._();

  Object get exception;
  @JsonKey(ignore: true)
  _$$ApiResponseErrorImplCopyWith<T, _$ApiResponseErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

AnimeResponseList _$AnimeResponseListFromJson(Map<String, dynamic> json) {
  return _AnimeResponseList.fromJson(json);
}

/// @nodoc
mixin _$AnimeResponseList {
  ApiPagination? get pagination => throw _privateConstructorUsedError;
  List<Anime> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimeResponseListCopyWith<AnimeResponseList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeResponseListCopyWith<$Res> {
  factory $AnimeResponseListCopyWith(
          AnimeResponseList value, $Res Function(AnimeResponseList) then) =
      _$AnimeResponseListCopyWithImpl<$Res, AnimeResponseList>;
  @useResult
  $Res call({ApiPagination? pagination, List<Anime> data});

  $ApiPaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$AnimeResponseListCopyWithImpl<$Res, $Val extends AnimeResponseList>
    implements $AnimeResponseListCopyWith<$Res> {
  _$AnimeResponseListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as ApiPagination?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Anime>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiPaginationCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $ApiPaginationCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnimeResponseListImplCopyWith<$Res>
    implements $AnimeResponseListCopyWith<$Res> {
  factory _$$AnimeResponseListImplCopyWith(_$AnimeResponseListImpl value,
          $Res Function(_$AnimeResponseListImpl) then) =
      __$$AnimeResponseListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiPagination? pagination, List<Anime> data});

  @override
  $ApiPaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$AnimeResponseListImplCopyWithImpl<$Res>
    extends _$AnimeResponseListCopyWithImpl<$Res, _$AnimeResponseListImpl>
    implements _$$AnimeResponseListImplCopyWith<$Res> {
  __$$AnimeResponseListImplCopyWithImpl(_$AnimeResponseListImpl _value,
      $Res Function(_$AnimeResponseListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = freezed,
    Object? data = null,
  }) {
    return _then(_$AnimeResponseListImpl(
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as ApiPagination?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Anime>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnimeResponseListImpl implements _AnimeResponseList {
  const _$AnimeResponseListImpl(
      {this.pagination, required final List<Anime> data})
      : _data = data;

  factory _$AnimeResponseListImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnimeResponseListImplFromJson(json);

  @override
  final ApiPagination? pagination;
  final List<Anime> _data;
  @override
  List<Anime> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AnimeResponseList(pagination: $pagination, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimeResponseListImpl &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, pagination, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimeResponseListImplCopyWith<_$AnimeResponseListImpl> get copyWith =>
      __$$AnimeResponseListImplCopyWithImpl<_$AnimeResponseListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnimeResponseListImplToJson(
      this,
    );
  }
}

abstract class _AnimeResponseList implements AnimeResponseList {
  const factory _AnimeResponseList(
      {final ApiPagination? pagination,
      required final List<Anime> data}) = _$AnimeResponseListImpl;

  factory _AnimeResponseList.fromJson(Map<String, dynamic> json) =
      _$AnimeResponseListImpl.fromJson;

  @override
  ApiPagination? get pagination;
  @override
  List<Anime> get data;
  @override
  @JsonKey(ignore: true)
  _$$AnimeResponseListImplCopyWith<_$AnimeResponseListImpl> get copyWith =>
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
abstract class _$$ApiPaginationImplCopyWith<$Res>
    implements $ApiPaginationCopyWith<$Res> {
  factory _$$ApiPaginationImplCopyWith(
          _$ApiPaginationImpl value, $Res Function(_$ApiPaginationImpl) then) =
      __$$ApiPaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "last_visible_page") int lastVisiblePage,
      @JsonKey(name: "has_next_page") bool hasNextPage});
}

/// @nodoc
class __$$ApiPaginationImplCopyWithImpl<$Res>
    extends _$ApiPaginationCopyWithImpl<$Res, _$ApiPaginationImpl>
    implements _$$ApiPaginationImplCopyWith<$Res> {
  __$$ApiPaginationImplCopyWithImpl(
      _$ApiPaginationImpl _value, $Res Function(_$ApiPaginationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastVisiblePage = null,
    Object? hasNextPage = null,
  }) {
    return _then(_$ApiPaginationImpl(
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
class _$ApiPaginationImpl implements _ApiPagination {
  const _$ApiPaginationImpl(
      {@JsonKey(name: "last_visible_page") required this.lastVisiblePage,
      @JsonKey(name: "has_next_page") required this.hasNextPage});

  factory _$ApiPaginationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiPaginationImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiPaginationImpl &&
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
  _$$ApiPaginationImplCopyWith<_$ApiPaginationImpl> get copyWith =>
      __$$ApiPaginationImplCopyWithImpl<_$ApiPaginationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiPaginationImplToJson(
      this,
    );
  }
}

abstract class _ApiPagination implements ApiPagination {
  const factory _ApiPagination(
      {@JsonKey(name: "last_visible_page") required final int lastVisiblePage,
      @JsonKey(name: "has_next_page")
      required final bool hasNextPage}) = _$ApiPaginationImpl;

  factory _ApiPagination.fromJson(Map<String, dynamic> json) =
      _$ApiPaginationImpl.fromJson;

  @override
  @JsonKey(name: "last_visible_page")
  int get lastVisiblePage;
  @override
  @JsonKey(name: "has_next_page")
  bool get hasNextPage;
  @override
  @JsonKey(ignore: true)
  _$$ApiPaginationImplCopyWith<_$ApiPaginationImpl> get copyWith =>
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
abstract class _$$ApiPaginationItemsImplCopyWith<$Res>
    implements $ApiPaginationItemsCopyWith<$Res> {
  factory _$$ApiPaginationItemsImplCopyWith(_$ApiPaginationItemsImpl value,
          $Res Function(_$ApiPaginationItemsImpl) then) =
      __$$ApiPaginationItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, int total, @JsonKey(name: "per_page") int perPage});
}

/// @nodoc
class __$$ApiPaginationItemsImplCopyWithImpl<$Res>
    extends _$ApiPaginationItemsCopyWithImpl<$Res, _$ApiPaginationItemsImpl>
    implements _$$ApiPaginationItemsImplCopyWith<$Res> {
  __$$ApiPaginationItemsImplCopyWithImpl(_$ApiPaginationItemsImpl _value,
      $Res Function(_$ApiPaginationItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? total = null,
    Object? perPage = null,
  }) {
    return _then(_$ApiPaginationItemsImpl(
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
class _$ApiPaginationItemsImpl implements _ApiPaginationItems {
  const _$ApiPaginationItemsImpl(
      {this.count = 0,
      this.total = 0,
      @JsonKey(name: "per_page") this.perPage = 0});

  factory _$ApiPaginationItemsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiPaginationItemsImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiPaginationItemsImpl &&
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
  _$$ApiPaginationItemsImplCopyWith<_$ApiPaginationItemsImpl> get copyWith =>
      __$$ApiPaginationItemsImplCopyWithImpl<_$ApiPaginationItemsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiPaginationItemsImplToJson(
      this,
    );
  }
}

abstract class _ApiPaginationItems implements ApiPaginationItems {
  const factory _ApiPaginationItems(
      {final int count,
      final int total,
      @JsonKey(name: "per_page") final int perPage}) = _$ApiPaginationItemsImpl;

  factory _ApiPaginationItems.fromJson(Map<String, dynamic> json) =
      _$ApiPaginationItemsImpl.fromJson;

  @override
  int get count;
  @override
  int get total;
  @override
  @JsonKey(name: "per_page")
  int get perPage;
  @override
  @JsonKey(ignore: true)
  _$$ApiPaginationItemsImplCopyWith<_$ApiPaginationItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
