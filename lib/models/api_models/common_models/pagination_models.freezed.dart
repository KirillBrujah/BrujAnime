// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiPagination _$ApiPaginationFromJson(Map<String, dynamic> json) {
  return _ApiPagination.fromJson(json);
}

/// @nodoc
mixin _$ApiPagination {
  @JsonKey(name: "last_visible_page")
  int get lastVisiblePage => throw _privateConstructorUsedError;
  @JsonKey(name: "has_next_page")
  bool get hasNextPage => throw _privateConstructorUsedError;
  @JsonKey(name: "current_page")
  int get currentPage => throw _privateConstructorUsedError;
  ApiPaginationItems get items => throw _privateConstructorUsedError;

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
      @JsonKey(name: "has_next_page") bool hasNextPage,
      @JsonKey(name: "current_page") int currentPage,
      ApiPaginationItems items});

  $ApiPaginationItemsCopyWith<$Res> get items;
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
    Object? currentPage = null,
    Object? items = null,
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
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as ApiPaginationItems,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiPaginationItemsCopyWith<$Res> get items {
    return $ApiPaginationItemsCopyWith<$Res>(_value.items, (value) {
      return _then(_value.copyWith(items: value) as $Val);
    });
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
      @JsonKey(name: "has_next_page") bool hasNextPage,
      @JsonKey(name: "current_page") int currentPage,
      ApiPaginationItems items});

  @override
  $ApiPaginationItemsCopyWith<$Res> get items;
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
    Object? currentPage = null,
    Object? items = null,
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
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as ApiPaginationItems,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiPagination implements _ApiPagination {
  const _$_ApiPagination(
      {@JsonKey(name: "last_visible_page") required this.lastVisiblePage,
      @JsonKey(name: "has_next_page") required this.hasNextPage,
      @JsonKey(name: "current_page") required this.currentPage,
      required this.items});

  factory _$_ApiPagination.fromJson(Map<String, dynamic> json) =>
      _$$_ApiPaginationFromJson(json);

  @override
  @JsonKey(name: "last_visible_page")
  final int lastVisiblePage;
  @override
  @JsonKey(name: "has_next_page")
  final bool hasNextPage;
  @override
  @JsonKey(name: "current_page")
  final int currentPage;
  @override
  final ApiPaginationItems items;

  @override
  String toString() {
    return 'ApiPagination(lastVisiblePage: $lastVisiblePage, hasNextPage: $hasNextPage, currentPage: $currentPage, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiPagination &&
            (identical(other.lastVisiblePage, lastVisiblePage) ||
                other.lastVisiblePage == lastVisiblePage) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.items, items) || other.items == items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, lastVisiblePage, hasNextPage, currentPage, items);

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
      {@JsonKey(name: "last_visible_page") required final int lastVisiblePage,
      @JsonKey(name: "has_next_page") required final bool hasNextPage,
      @JsonKey(name: "current_page") required final int currentPage,
      required final ApiPaginationItems items}) = _$_ApiPagination;

  factory _ApiPagination.fromJson(Map<String, dynamic> json) =
      _$_ApiPagination.fromJson;

  @override
  @JsonKey(name: "last_visible_page")
  int get lastVisiblePage;
  @override
  @JsonKey(name: "has_next_page")
  bool get hasNextPage;
  @override
  @JsonKey(name: "current_page")
  int get currentPage;
  @override
  ApiPaginationItems get items;
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
