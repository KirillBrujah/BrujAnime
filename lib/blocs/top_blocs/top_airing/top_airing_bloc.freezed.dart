// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_airing_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TopAiringEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TopAiringFetchEvent value) fetch,
    required TResult Function(_TopAiringResetEvent value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TopAiringFetchEvent value)? fetch,
    TResult? Function(_TopAiringResetEvent value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TopAiringFetchEvent value)? fetch,
    TResult Function(_TopAiringResetEvent value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopAiringEventCopyWith<$Res> {
  factory $TopAiringEventCopyWith(
          TopAiringEvent value, $Res Function(TopAiringEvent) then) =
      _$TopAiringEventCopyWithImpl<$Res, TopAiringEvent>;
}

/// @nodoc
class _$TopAiringEventCopyWithImpl<$Res, $Val extends TopAiringEvent>
    implements $TopAiringEventCopyWith<$Res> {
  _$TopAiringEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TopAiringFetchEventCopyWith<$Res> {
  factory _$$_TopAiringFetchEventCopyWith(_$_TopAiringFetchEvent value,
          $Res Function(_$_TopAiringFetchEvent) then) =
      __$$_TopAiringFetchEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TopAiringFetchEventCopyWithImpl<$Res>
    extends _$TopAiringEventCopyWithImpl<$Res, _$_TopAiringFetchEvent>
    implements _$$_TopAiringFetchEventCopyWith<$Res> {
  __$$_TopAiringFetchEventCopyWithImpl(_$_TopAiringFetchEvent _value,
      $Res Function(_$_TopAiringFetchEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TopAiringFetchEvent implements _TopAiringFetchEvent {
  const _$_TopAiringFetchEvent();

  @override
  String toString() {
    return 'TopAiringEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TopAiringFetchEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() reset,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? reset,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TopAiringFetchEvent value) fetch,
    required TResult Function(_TopAiringResetEvent value) reset,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TopAiringFetchEvent value)? fetch,
    TResult? Function(_TopAiringResetEvent value)? reset,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TopAiringFetchEvent value)? fetch,
    TResult Function(_TopAiringResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _TopAiringFetchEvent implements TopAiringEvent {
  const factory _TopAiringFetchEvent() = _$_TopAiringFetchEvent;
}

/// @nodoc
abstract class _$$_TopAiringResetEventCopyWith<$Res> {
  factory _$$_TopAiringResetEventCopyWith(_$_TopAiringResetEvent value,
          $Res Function(_$_TopAiringResetEvent) then) =
      __$$_TopAiringResetEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TopAiringResetEventCopyWithImpl<$Res>
    extends _$TopAiringEventCopyWithImpl<$Res, _$_TopAiringResetEvent>
    implements _$$_TopAiringResetEventCopyWith<$Res> {
  __$$_TopAiringResetEventCopyWithImpl(_$_TopAiringResetEvent _value,
      $Res Function(_$_TopAiringResetEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TopAiringResetEvent implements _TopAiringResetEvent {
  const _$_TopAiringResetEvent();

  @override
  String toString() {
    return 'TopAiringEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TopAiringResetEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TopAiringFetchEvent value) fetch,
    required TResult Function(_TopAiringResetEvent value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TopAiringFetchEvent value)? fetch,
    TResult? Function(_TopAiringResetEvent value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TopAiringFetchEvent value)? fetch,
    TResult Function(_TopAiringResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _TopAiringResetEvent implements TopAiringEvent {
  const factory _TopAiringResetEvent() = _$_TopAiringResetEvent;
}

/// @nodoc
mixin _$TopAiringState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Anime> list, ApiPagination pagination) data,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Anime> list, ApiPagination pagination)? data,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Anime> list, ApiPagination pagination)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TopAiringInitialState value) initial,
    required TResult Function(_TopAiringDataState value) data,
    required TResult Function(_TopAiringErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TopAiringInitialState value)? initial,
    TResult? Function(_TopAiringDataState value)? data,
    TResult? Function(_TopAiringErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TopAiringInitialState value)? initial,
    TResult Function(_TopAiringDataState value)? data,
    TResult Function(_TopAiringErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopAiringStateCopyWith<$Res> {
  factory $TopAiringStateCopyWith(
          TopAiringState value, $Res Function(TopAiringState) then) =
      _$TopAiringStateCopyWithImpl<$Res, TopAiringState>;
}

/// @nodoc
class _$TopAiringStateCopyWithImpl<$Res, $Val extends TopAiringState>
    implements $TopAiringStateCopyWith<$Res> {
  _$TopAiringStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TopAiringInitialStateCopyWith<$Res> {
  factory _$$_TopAiringInitialStateCopyWith(_$_TopAiringInitialState value,
          $Res Function(_$_TopAiringInitialState) then) =
      __$$_TopAiringInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TopAiringInitialStateCopyWithImpl<$Res>
    extends _$TopAiringStateCopyWithImpl<$Res, _$_TopAiringInitialState>
    implements _$$_TopAiringInitialStateCopyWith<$Res> {
  __$$_TopAiringInitialStateCopyWithImpl(_$_TopAiringInitialState _value,
      $Res Function(_$_TopAiringInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TopAiringInitialState extends _TopAiringInitialState {
  const _$_TopAiringInitialState() : super._();

  @override
  String toString() {
    return 'TopAiringState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TopAiringInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Anime> list, ApiPagination pagination) data,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Anime> list, ApiPagination pagination)? data,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Anime> list, ApiPagination pagination)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TopAiringInitialState value) initial,
    required TResult Function(_TopAiringDataState value) data,
    required TResult Function(_TopAiringErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TopAiringInitialState value)? initial,
    TResult? Function(_TopAiringDataState value)? data,
    TResult? Function(_TopAiringErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TopAiringInitialState value)? initial,
    TResult Function(_TopAiringDataState value)? data,
    TResult Function(_TopAiringErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _TopAiringInitialState extends TopAiringState {
  const factory _TopAiringInitialState() = _$_TopAiringInitialState;
  const _TopAiringInitialState._() : super._();
}

/// @nodoc
abstract class _$$_TopAiringDataStateCopyWith<$Res> {
  factory _$$_TopAiringDataStateCopyWith(_$_TopAiringDataState value,
          $Res Function(_$_TopAiringDataState) then) =
      __$$_TopAiringDataStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Anime> list, ApiPagination pagination});

  $ApiPaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$_TopAiringDataStateCopyWithImpl<$Res>
    extends _$TopAiringStateCopyWithImpl<$Res, _$_TopAiringDataState>
    implements _$$_TopAiringDataStateCopyWith<$Res> {
  __$$_TopAiringDataStateCopyWithImpl(
      _$_TopAiringDataState _value, $Res Function(_$_TopAiringDataState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? pagination = null,
  }) {
    return _then(_$_TopAiringDataState(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Anime>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as ApiPagination,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiPaginationCopyWith<$Res> get pagination {
    return $ApiPaginationCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value));
    });
  }
}

/// @nodoc

class _$_TopAiringDataState extends _TopAiringDataState {
  const _$_TopAiringDataState(
      {required final List<Anime> list, required this.pagination})
      : _list = list,
        super._();

  final List<Anime> _list;
  @override
  List<Anime> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final ApiPagination pagination;

  @override
  String toString() {
    return 'TopAiringState.data(list: $list, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopAiringDataState &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_list), pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopAiringDataStateCopyWith<_$_TopAiringDataState> get copyWith =>
      __$$_TopAiringDataStateCopyWithImpl<_$_TopAiringDataState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Anime> list, ApiPagination pagination) data,
    required TResult Function(String message) error,
  }) {
    return data(list, pagination);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Anime> list, ApiPagination pagination)? data,
    TResult? Function(String message)? error,
  }) {
    return data?.call(list, pagination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Anime> list, ApiPagination pagination)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(list, pagination);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TopAiringInitialState value) initial,
    required TResult Function(_TopAiringDataState value) data,
    required TResult Function(_TopAiringErrorState value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TopAiringInitialState value)? initial,
    TResult? Function(_TopAiringDataState value)? data,
    TResult? Function(_TopAiringErrorState value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TopAiringInitialState value)? initial,
    TResult Function(_TopAiringDataState value)? data,
    TResult Function(_TopAiringErrorState value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _TopAiringDataState extends TopAiringState {
  const factory _TopAiringDataState(
      {required final List<Anime> list,
      required final ApiPagination pagination}) = _$_TopAiringDataState;
  const _TopAiringDataState._() : super._();

  List<Anime> get list;
  ApiPagination get pagination;
  @JsonKey(ignore: true)
  _$$_TopAiringDataStateCopyWith<_$_TopAiringDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TopAiringErrorStateCopyWith<$Res> {
  factory _$$_TopAiringErrorStateCopyWith(_$_TopAiringErrorState value,
          $Res Function(_$_TopAiringErrorState) then) =
      __$$_TopAiringErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_TopAiringErrorStateCopyWithImpl<$Res>
    extends _$TopAiringStateCopyWithImpl<$Res, _$_TopAiringErrorState>
    implements _$$_TopAiringErrorStateCopyWith<$Res> {
  __$$_TopAiringErrorStateCopyWithImpl(_$_TopAiringErrorState _value,
      $Res Function(_$_TopAiringErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_TopAiringErrorState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TopAiringErrorState extends _TopAiringErrorState {
  const _$_TopAiringErrorState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'TopAiringState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopAiringErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopAiringErrorStateCopyWith<_$_TopAiringErrorState> get copyWith =>
      __$$_TopAiringErrorStateCopyWithImpl<_$_TopAiringErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Anime> list, ApiPagination pagination) data,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Anime> list, ApiPagination pagination)? data,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Anime> list, ApiPagination pagination)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TopAiringInitialState value) initial,
    required TResult Function(_TopAiringDataState value) data,
    required TResult Function(_TopAiringErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TopAiringInitialState value)? initial,
    TResult? Function(_TopAiringDataState value)? data,
    TResult? Function(_TopAiringErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TopAiringInitialState value)? initial,
    TResult Function(_TopAiringDataState value)? data,
    TResult Function(_TopAiringErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _TopAiringErrorState extends TopAiringState {
  const factory _TopAiringErrorState(final String message) =
      _$_TopAiringErrorState;
  const _TopAiringErrorState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_TopAiringErrorStateCopyWith<_$_TopAiringErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
