// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'application_preload_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApplicationPreloadState {
  double get progress => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double progress) loading,
    required TResult Function(double progress) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double progress)? loading,
    TResult? Function(double progress)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double progress)? loading,
    TResult Function(double progress)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationPreloadLoadingState value) loading,
    required TResult Function(_ApplicationPreloadCompleteState value) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplicationPreloadLoadingState value)? loading,
    TResult? Function(_ApplicationPreloadCompleteState value)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationPreloadLoadingState value)? loading,
    TResult Function(_ApplicationPreloadCompleteState value)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApplicationPreloadStateCopyWith<ApplicationPreloadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationPreloadStateCopyWith<$Res> {
  factory $ApplicationPreloadStateCopyWith(ApplicationPreloadState value,
          $Res Function(ApplicationPreloadState) then) =
      _$ApplicationPreloadStateCopyWithImpl<$Res, ApplicationPreloadState>;
  @useResult
  $Res call({double progress});
}

/// @nodoc
class _$ApplicationPreloadStateCopyWithImpl<$Res,
        $Val extends ApplicationPreloadState>
    implements $ApplicationPreloadStateCopyWith<$Res> {
  _$ApplicationPreloadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
  }) {
    return _then(_value.copyWith(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApplicationPreloadLoadingStateCopyWith<$Res>
    implements $ApplicationPreloadStateCopyWith<$Res> {
  factory _$$_ApplicationPreloadLoadingStateCopyWith(
          _$_ApplicationPreloadLoadingState value,
          $Res Function(_$_ApplicationPreloadLoadingState) then) =
      __$$_ApplicationPreloadLoadingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double progress});
}

/// @nodoc
class __$$_ApplicationPreloadLoadingStateCopyWithImpl<$Res>
    extends _$ApplicationPreloadStateCopyWithImpl<$Res,
        _$_ApplicationPreloadLoadingState>
    implements _$$_ApplicationPreloadLoadingStateCopyWith<$Res> {
  __$$_ApplicationPreloadLoadingStateCopyWithImpl(
      _$_ApplicationPreloadLoadingState _value,
      $Res Function(_$_ApplicationPreloadLoadingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
  }) {
    return _then(_$_ApplicationPreloadLoadingState(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ApplicationPreloadLoadingState
    implements _ApplicationPreloadLoadingState {
  const _$_ApplicationPreloadLoadingState({required this.progress});

  @override
  final double progress;

  @override
  String toString() {
    return 'ApplicationPreloadState.loading(progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApplicationPreloadLoadingState &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApplicationPreloadLoadingStateCopyWith<_$_ApplicationPreloadLoadingState>
      get copyWith => __$$_ApplicationPreloadLoadingStateCopyWithImpl<
          _$_ApplicationPreloadLoadingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double progress) loading,
    required TResult Function(double progress) completed,
  }) {
    return loading(progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double progress)? loading,
    TResult? Function(double progress)? completed,
  }) {
    return loading?.call(progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double progress)? loading,
    TResult Function(double progress)? completed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationPreloadLoadingState value) loading,
    required TResult Function(_ApplicationPreloadCompleteState value) completed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplicationPreloadLoadingState value)? loading,
    TResult? Function(_ApplicationPreloadCompleteState value)? completed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationPreloadLoadingState value)? loading,
    TResult Function(_ApplicationPreloadCompleteState value)? completed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ApplicationPreloadLoadingState
    implements ApplicationPreloadState {
  const factory _ApplicationPreloadLoadingState(
      {required final double progress}) = _$_ApplicationPreloadLoadingState;

  @override
  double get progress;
  @override
  @JsonKey(ignore: true)
  _$$_ApplicationPreloadLoadingStateCopyWith<_$_ApplicationPreloadLoadingState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ApplicationPreloadCompleteStateCopyWith<$Res>
    implements $ApplicationPreloadStateCopyWith<$Res> {
  factory _$$_ApplicationPreloadCompleteStateCopyWith(
          _$_ApplicationPreloadCompleteState value,
          $Res Function(_$_ApplicationPreloadCompleteState) then) =
      __$$_ApplicationPreloadCompleteStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double progress});
}

/// @nodoc
class __$$_ApplicationPreloadCompleteStateCopyWithImpl<$Res>
    extends _$ApplicationPreloadStateCopyWithImpl<$Res,
        _$_ApplicationPreloadCompleteState>
    implements _$$_ApplicationPreloadCompleteStateCopyWith<$Res> {
  __$$_ApplicationPreloadCompleteStateCopyWithImpl(
      _$_ApplicationPreloadCompleteState _value,
      $Res Function(_$_ApplicationPreloadCompleteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
  }) {
    return _then(_$_ApplicationPreloadCompleteState(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ApplicationPreloadCompleteState
    implements _ApplicationPreloadCompleteState {
  const _$_ApplicationPreloadCompleteState({this.progress = 1.0});

  @override
  @JsonKey()
  final double progress;

  @override
  String toString() {
    return 'ApplicationPreloadState.completed(progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApplicationPreloadCompleteState &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApplicationPreloadCompleteStateCopyWith<
          _$_ApplicationPreloadCompleteState>
      get copyWith => __$$_ApplicationPreloadCompleteStateCopyWithImpl<
          _$_ApplicationPreloadCompleteState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double progress) loading,
    required TResult Function(double progress) completed,
  }) {
    return completed(progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double progress)? loading,
    TResult? Function(double progress)? completed,
  }) {
    return completed?.call(progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double progress)? loading,
    TResult Function(double progress)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationPreloadLoadingState value) loading,
    required TResult Function(_ApplicationPreloadCompleteState value) completed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplicationPreloadLoadingState value)? loading,
    TResult? Function(_ApplicationPreloadCompleteState value)? completed,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationPreloadLoadingState value)? loading,
    TResult Function(_ApplicationPreloadCompleteState value)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _ApplicationPreloadCompleteState
    implements ApplicationPreloadState {
  const factory _ApplicationPreloadCompleteState({final double progress}) =
      _$_ApplicationPreloadCompleteState;

  @override
  double get progress;
  @override
  @JsonKey(ignore: true)
  _$$_ApplicationPreloadCompleteStateCopyWith<
          _$_ApplicationPreloadCompleteState>
      get copyWith => throw _privateConstructorUsedError;
}
