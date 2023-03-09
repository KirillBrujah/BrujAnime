// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime_recommendation_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnimeRecommendation _$AnimeRecommendationFromJson(Map<String, dynamic> json) {
  return _AnimeRecommendation.fromJson(json);
}

/// @nodoc
mixin _$AnimeRecommendation {
  @JsonKey(name: "mal_id")
  String get id => throw _privateConstructorUsedError;
  List<AnimeRecommendationEntry> get entry =>
      throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimeRecommendationCopyWith<AnimeRecommendation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeRecommendationCopyWith<$Res> {
  factory $AnimeRecommendationCopyWith(
          AnimeRecommendation value, $Res Function(AnimeRecommendation) then) =
      _$AnimeRecommendationCopyWithImpl<$Res, AnimeRecommendation>;
  @useResult
  $Res call(
      {@JsonKey(name: "mal_id") String id,
      List<AnimeRecommendationEntry> entry,
      String content,
      DateTime date,
      User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$AnimeRecommendationCopyWithImpl<$Res, $Val extends AnimeRecommendation>
    implements $AnimeRecommendationCopyWith<$Res> {
  _$AnimeRecommendationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? entry = null,
    Object? content = null,
    Object? date = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      entry: null == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as List<AnimeRecommendationEntry>,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AnimeRecommendationCopyWith<$Res>
    implements $AnimeRecommendationCopyWith<$Res> {
  factory _$$_AnimeRecommendationCopyWith(_$_AnimeRecommendation value,
          $Res Function(_$_AnimeRecommendation) then) =
      __$$_AnimeRecommendationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "mal_id") String id,
      List<AnimeRecommendationEntry> entry,
      String content,
      DateTime date,
      User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_AnimeRecommendationCopyWithImpl<$Res>
    extends _$AnimeRecommendationCopyWithImpl<$Res, _$_AnimeRecommendation>
    implements _$$_AnimeRecommendationCopyWith<$Res> {
  __$$_AnimeRecommendationCopyWithImpl(_$_AnimeRecommendation _value,
      $Res Function(_$_AnimeRecommendation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? entry = null,
    Object? content = null,
    Object? date = null,
    Object? user = null,
  }) {
    return _then(_$_AnimeRecommendation(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      entry: null == entry
          ? _value._entry
          : entry // ignore: cast_nullable_to_non_nullable
              as List<AnimeRecommendationEntry>,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnimeRecommendation implements _AnimeRecommendation {
  const _$_AnimeRecommendation(
      {@JsonKey(name: "mal_id") required this.id,
      required final List<AnimeRecommendationEntry> entry,
      required this.content,
      required this.date,
      required this.user})
      : _entry = entry;

  factory _$_AnimeRecommendation.fromJson(Map<String, dynamic> json) =>
      _$$_AnimeRecommendationFromJson(json);

  @override
  @JsonKey(name: "mal_id")
  final String id;
  final List<AnimeRecommendationEntry> _entry;
  @override
  List<AnimeRecommendationEntry> get entry {
    if (_entry is EqualUnmodifiableListView) return _entry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entry);
  }

  @override
  final String content;
  @override
  final DateTime date;
  @override
  final User user;

  @override
  String toString() {
    return 'AnimeRecommendation(id: $id, entry: $entry, content: $content, date: $date, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimeRecommendation &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._entry, _entry) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_entry), content, date, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimeRecommendationCopyWith<_$_AnimeRecommendation> get copyWith =>
      __$$_AnimeRecommendationCopyWithImpl<_$_AnimeRecommendation>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnimeRecommendationToJson(
      this,
    );
  }
}

abstract class _AnimeRecommendation implements AnimeRecommendation {
  const factory _AnimeRecommendation(
      {@JsonKey(name: "mal_id") required final String id,
      required final List<AnimeRecommendationEntry> entry,
      required final String content,
      required final DateTime date,
      required final User user}) = _$_AnimeRecommendation;

  factory _AnimeRecommendation.fromJson(Map<String, dynamic> json) =
      _$_AnimeRecommendation.fromJson;

  @override
  @JsonKey(name: "mal_id")
  String get id;
  @override
  List<AnimeRecommendationEntry> get entry;
  @override
  String get content;
  @override
  DateTime get date;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$_AnimeRecommendationCopyWith<_$_AnimeRecommendation> get copyWith =>
      throw _privateConstructorUsedError;
}

AnimeRecommendationEntry _$AnimeRecommendationEntryFromJson(
    Map<String, dynamic> json) {
  return _AnimeRecommendationEntry.fromJson(json);
}

/// @nodoc
mixin _$AnimeRecommendationEntry {
  @JsonKey(name: "mal_id")
  int get id => throw _privateConstructorUsedError;
  ImagesWrapper? get images => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimeRecommendationEntryCopyWith<AnimeRecommendationEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeRecommendationEntryCopyWith<$Res> {
  factory $AnimeRecommendationEntryCopyWith(AnimeRecommendationEntry value,
          $Res Function(AnimeRecommendationEntry) then) =
      _$AnimeRecommendationEntryCopyWithImpl<$Res, AnimeRecommendationEntry>;
  @useResult
  $Res call(
      {@JsonKey(name: "mal_id") int id, ImagesWrapper? images, String title});

  $ImagesWrapperCopyWith<$Res>? get images;
}

/// @nodoc
class _$AnimeRecommendationEntryCopyWithImpl<$Res,
        $Val extends AnimeRecommendationEntry>
    implements $AnimeRecommendationEntryCopyWith<$Res> {
  _$AnimeRecommendationEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = freezed,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as ImagesWrapper?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImagesWrapperCopyWith<$Res>? get images {
    if (_value.images == null) {
      return null;
    }

    return $ImagesWrapperCopyWith<$Res>(_value.images!, (value) {
      return _then(_value.copyWith(images: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AnimeRecommendationEntryCopyWith<$Res>
    implements $AnimeRecommendationEntryCopyWith<$Res> {
  factory _$$_AnimeRecommendationEntryCopyWith(
          _$_AnimeRecommendationEntry value,
          $Res Function(_$_AnimeRecommendationEntry) then) =
      __$$_AnimeRecommendationEntryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "mal_id") int id, ImagesWrapper? images, String title});

  @override
  $ImagesWrapperCopyWith<$Res>? get images;
}

/// @nodoc
class __$$_AnimeRecommendationEntryCopyWithImpl<$Res>
    extends _$AnimeRecommendationEntryCopyWithImpl<$Res,
        _$_AnimeRecommendationEntry>
    implements _$$_AnimeRecommendationEntryCopyWith<$Res> {
  __$$_AnimeRecommendationEntryCopyWithImpl(_$_AnimeRecommendationEntry _value,
      $Res Function(_$_AnimeRecommendationEntry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = freezed,
    Object? title = null,
  }) {
    return _then(_$_AnimeRecommendationEntry(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as ImagesWrapper?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnimeRecommendationEntry implements _AnimeRecommendationEntry {
  const _$_AnimeRecommendationEntry(
      {@JsonKey(name: "mal_id") required this.id,
      this.images,
      required this.title});

  factory _$_AnimeRecommendationEntry.fromJson(Map<String, dynamic> json) =>
      _$$_AnimeRecommendationEntryFromJson(json);

  @override
  @JsonKey(name: "mal_id")
  final int id;
  @override
  final ImagesWrapper? images;
  @override
  final String title;

  @override
  String toString() {
    return 'AnimeRecommendationEntry(id: $id, images: $images, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimeRecommendationEntry &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.images, images) || other.images == images) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, images, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimeRecommendationEntryCopyWith<_$_AnimeRecommendationEntry>
      get copyWith => __$$_AnimeRecommendationEntryCopyWithImpl<
          _$_AnimeRecommendationEntry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnimeRecommendationEntryToJson(
      this,
    );
  }
}

abstract class _AnimeRecommendationEntry implements AnimeRecommendationEntry {
  const factory _AnimeRecommendationEntry(
      {@JsonKey(name: "mal_id") required final int id,
      final ImagesWrapper? images,
      required final String title}) = _$_AnimeRecommendationEntry;

  factory _AnimeRecommendationEntry.fromJson(Map<String, dynamic> json) =
      _$_AnimeRecommendationEntry.fromJson;

  @override
  @JsonKey(name: "mal_id")
  int get id;
  @override
  ImagesWrapper? get images;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_AnimeRecommendationEntryCopyWith<_$_AnimeRecommendationEntry>
      get copyWith => throw _privateConstructorUsedError;
}
