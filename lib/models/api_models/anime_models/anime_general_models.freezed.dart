// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime_general_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Anime _$AnimeFromJson(Map<String, dynamic> json) {
  return _Anime.fromJson(json);
}

/// @nodoc
mixin _$Anime {
  @JsonKey(name: "mal_id")
  int get id => throw _privateConstructorUsedError; // TODO: images
// TODO: trailer
// TODO: List<Title>
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "title_english")
  String? get titleEnglish => throw _privateConstructorUsedError;
  @JsonKey(name: "title_japanese")
  String? get titleJapanese => throw _privateConstructorUsedError; // TODO: type
// TODO: source
  int get episodes => throw _privateConstructorUsedError; // TODO: AnimeStatuses
  bool get airing => throw _privateConstructorUsedError; // TODO: Aired
  String get duration => throw _privateConstructorUsedError; // TODO: rating
  double get score => throw _privateConstructorUsedError;
  int get scoredBy => throw _privateConstructorUsedError;
  int get rank => throw _privateConstructorUsedError;
  int get popularity => throw _privateConstructorUsedError;
  String get synopsis => throw _privateConstructorUsedError;
  String get background => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimeCopyWith<Anime> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeCopyWith<$Res> {
  factory $AnimeCopyWith(Anime value, $Res Function(Anime) then) =
      _$AnimeCopyWithImpl<$Res, Anime>;
  @useResult
  $Res call(
      {@JsonKey(name: "mal_id") int id,
      String? title,
      @JsonKey(name: "title_english") String? titleEnglish,
      @JsonKey(name: "title_japanese") String? titleJapanese,
      int episodes,
      bool airing,
      String duration,
      double score,
      int scoredBy,
      int rank,
      int popularity,
      String synopsis,
      String background});
}

/// @nodoc
class _$AnimeCopyWithImpl<$Res, $Val extends Anime>
    implements $AnimeCopyWith<$Res> {
  _$AnimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? titleEnglish = freezed,
    Object? titleJapanese = freezed,
    Object? episodes = null,
    Object? airing = null,
    Object? duration = null,
    Object? score = null,
    Object? scoredBy = null,
    Object? rank = null,
    Object? popularity = null,
    Object? synopsis = null,
    Object? background = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleEnglish: freezed == titleEnglish
          ? _value.titleEnglish
          : titleEnglish // ignore: cast_nullable_to_non_nullable
              as String?,
      titleJapanese: freezed == titleJapanese
          ? _value.titleJapanese
          : titleJapanese // ignore: cast_nullable_to_non_nullable
              as String?,
      episodes: null == episodes
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as int,
      airing: null == airing
          ? _value.airing
          : airing // ignore: cast_nullable_to_non_nullable
              as bool,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      scoredBy: null == scoredBy
          ? _value.scoredBy
          : scoredBy // ignore: cast_nullable_to_non_nullable
              as int,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int,
      synopsis: null == synopsis
          ? _value.synopsis
          : synopsis // ignore: cast_nullable_to_non_nullable
              as String,
      background: null == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnimeCopyWith<$Res> implements $AnimeCopyWith<$Res> {
  factory _$$_AnimeCopyWith(_$_Anime value, $Res Function(_$_Anime) then) =
      __$$_AnimeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "mal_id") int id,
      String? title,
      @JsonKey(name: "title_english") String? titleEnglish,
      @JsonKey(name: "title_japanese") String? titleJapanese,
      int episodes,
      bool airing,
      String duration,
      double score,
      int scoredBy,
      int rank,
      int popularity,
      String synopsis,
      String background});
}

/// @nodoc
class __$$_AnimeCopyWithImpl<$Res> extends _$AnimeCopyWithImpl<$Res, _$_Anime>
    implements _$$_AnimeCopyWith<$Res> {
  __$$_AnimeCopyWithImpl(_$_Anime _value, $Res Function(_$_Anime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? titleEnglish = freezed,
    Object? titleJapanese = freezed,
    Object? episodes = null,
    Object? airing = null,
    Object? duration = null,
    Object? score = null,
    Object? scoredBy = null,
    Object? rank = null,
    Object? popularity = null,
    Object? synopsis = null,
    Object? background = null,
  }) {
    return _then(_$_Anime(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleEnglish: freezed == titleEnglish
          ? _value.titleEnglish
          : titleEnglish // ignore: cast_nullable_to_non_nullable
              as String?,
      titleJapanese: freezed == titleJapanese
          ? _value.titleJapanese
          : titleJapanese // ignore: cast_nullable_to_non_nullable
              as String?,
      episodes: null == episodes
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as int,
      airing: null == airing
          ? _value.airing
          : airing // ignore: cast_nullable_to_non_nullable
              as bool,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      scoredBy: null == scoredBy
          ? _value.scoredBy
          : scoredBy // ignore: cast_nullable_to_non_nullable
              as int,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int,
      synopsis: null == synopsis
          ? _value.synopsis
          : synopsis // ignore: cast_nullable_to_non_nullable
              as String,
      background: null == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Anime extends _Anime {
  const _$_Anime(
      {@JsonKey(name: "mal_id") required this.id,
      this.title,
      @JsonKey(name: "title_english") this.titleEnglish,
      @JsonKey(name: "title_japanese") this.titleJapanese,
      this.episodes = 0,
      required this.airing,
      required this.duration,
      this.score = 0,
      this.scoredBy = 0,
      this.rank = 0,
      this.popularity = 0,
      this.synopsis = "",
      this.background = ""})
      : super._();

  factory _$_Anime.fromJson(Map<String, dynamic> json) =>
      _$$_AnimeFromJson(json);

  @override
  @JsonKey(name: "mal_id")
  final int id;
// TODO: images
// TODO: trailer
// TODO: List<Title>
  @override
  final String? title;
  @override
  @JsonKey(name: "title_english")
  final String? titleEnglish;
  @override
  @JsonKey(name: "title_japanese")
  final String? titleJapanese;
// TODO: type
// TODO: source
  @override
  @JsonKey()
  final int episodes;
// TODO: AnimeStatuses
  @override
  final bool airing;
// TODO: Aired
  @override
  final String duration;
// TODO: rating
  @override
  @JsonKey()
  final double score;
  @override
  @JsonKey()
  final int scoredBy;
  @override
  @JsonKey()
  final int rank;
  @override
  @JsonKey()
  final int popularity;
  @override
  @JsonKey()
  final String synopsis;
  @override
  @JsonKey()
  final String background;

  @override
  String toString() {
    return 'Anime(id: $id, title: $title, titleEnglish: $titleEnglish, titleJapanese: $titleJapanese, episodes: $episodes, airing: $airing, duration: $duration, score: $score, scoredBy: $scoredBy, rank: $rank, popularity: $popularity, synopsis: $synopsis, background: $background)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Anime &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.titleEnglish, titleEnglish) ||
                other.titleEnglish == titleEnglish) &&
            (identical(other.titleJapanese, titleJapanese) ||
                other.titleJapanese == titleJapanese) &&
            (identical(other.episodes, episodes) ||
                other.episodes == episodes) &&
            (identical(other.airing, airing) || other.airing == airing) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.scoredBy, scoredBy) ||
                other.scoredBy == scoredBy) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.synopsis, synopsis) ||
                other.synopsis == synopsis) &&
            (identical(other.background, background) ||
                other.background == background));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      titleEnglish,
      titleJapanese,
      episodes,
      airing,
      duration,
      score,
      scoredBy,
      rank,
      popularity,
      synopsis,
      background);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimeCopyWith<_$_Anime> get copyWith =>
      __$$_AnimeCopyWithImpl<_$_Anime>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnimeToJson(
      this,
    );
  }
}

abstract class _Anime extends Anime {
  const factory _Anime(
      {@JsonKey(name: "mal_id") required final int id,
      final String? title,
      @JsonKey(name: "title_english") final String? titleEnglish,
      @JsonKey(name: "title_japanese") final String? titleJapanese,
      final int episodes,
      required final bool airing,
      required final String duration,
      final double score,
      final int scoredBy,
      final int rank,
      final int popularity,
      final String synopsis,
      final String background}) = _$_Anime;
  const _Anime._() : super._();

  factory _Anime.fromJson(Map<String, dynamic> json) = _$_Anime.fromJson;

  @override
  @JsonKey(name: "mal_id")
  int get id;
  @override // TODO: images
// TODO: trailer
// TODO: List<Title>
  String? get title;
  @override
  @JsonKey(name: "title_english")
  String? get titleEnglish;
  @override
  @JsonKey(name: "title_japanese")
  String? get titleJapanese;
  @override // TODO: type
// TODO: source
  int get episodes;
  @override // TODO: AnimeStatuses
  bool get airing;
  @override // TODO: Aired
  String get duration;
  @override // TODO: rating
  double get score;
  @override
  int get scoredBy;
  @override
  int get rank;
  @override
  int get popularity;
  @override
  String get synopsis;
  @override
  String get background;
  @override
  @JsonKey(ignore: true)
  _$$_AnimeCopyWith<_$_Anime> get copyWith =>
      throw _privateConstructorUsedError;
}

AnimeTitle _$AnimeTitleFromJson(Map<String, dynamic> json) {
  return _AnimeTitle.fromJson(json);
}

/// @nodoc
mixin _$AnimeTitle {
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimeTitleCopyWith<AnimeTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeTitleCopyWith<$Res> {
  factory $AnimeTitleCopyWith(
          AnimeTitle value, $Res Function(AnimeTitle) then) =
      _$AnimeTitleCopyWithImpl<$Res, AnimeTitle>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class _$AnimeTitleCopyWithImpl<$Res, $Val extends AnimeTitle>
    implements $AnimeTitleCopyWith<$Res> {
  _$AnimeTitleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnimeTitleCopyWith<$Res>
    implements $AnimeTitleCopyWith<$Res> {
  factory _$$_AnimeTitleCopyWith(
          _$_AnimeTitle value, $Res Function(_$_AnimeTitle) then) =
      __$$_AnimeTitleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$_AnimeTitleCopyWithImpl<$Res>
    extends _$AnimeTitleCopyWithImpl<$Res, _$_AnimeTitle>
    implements _$$_AnimeTitleCopyWith<$Res> {
  __$$_AnimeTitleCopyWithImpl(
      _$_AnimeTitle _value, $Res Function(_$_AnimeTitle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$_AnimeTitle(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnimeTitle implements _AnimeTitle {
  const _$_AnimeTitle(this.title);

  factory _$_AnimeTitle.fromJson(Map<String, dynamic> json) =>
      _$$_AnimeTitleFromJson(json);

  @override
  final String title;

  @override
  String toString() {
    return 'AnimeTitle(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimeTitle &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimeTitleCopyWith<_$_AnimeTitle> get copyWith =>
      __$$_AnimeTitleCopyWithImpl<_$_AnimeTitle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnimeTitleToJson(
      this,
    );
  }
}

abstract class _AnimeTitle implements AnimeTitle {
  const factory _AnimeTitle(final String title) = _$_AnimeTitle;

  factory _AnimeTitle.fromJson(Map<String, dynamic> json) =
      _$_AnimeTitle.fromJson;

  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_AnimeTitleCopyWith<_$_AnimeTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

AnimeAired _$AnimeAiredFromJson(Map<String, dynamic> json) {
  return _AnimeAired.fromJson(json);
}

/// @nodoc
mixin _$AnimeAired {
  DateTime get from => throw _privateConstructorUsedError;
  DateTime get to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimeAiredCopyWith<AnimeAired> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeAiredCopyWith<$Res> {
  factory $AnimeAiredCopyWith(
          AnimeAired value, $Res Function(AnimeAired) then) =
      _$AnimeAiredCopyWithImpl<$Res, AnimeAired>;
  @useResult
  $Res call({DateTime from, DateTime to});
}

/// @nodoc
class _$AnimeAiredCopyWithImpl<$Res, $Val extends AnimeAired>
    implements $AnimeAiredCopyWith<$Res> {
  _$AnimeAiredCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_value.copyWith(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnimeAiredCopyWith<$Res>
    implements $AnimeAiredCopyWith<$Res> {
  factory _$$_AnimeAiredCopyWith(
          _$_AnimeAired value, $Res Function(_$_AnimeAired) then) =
      __$$_AnimeAiredCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime from, DateTime to});
}

/// @nodoc
class __$$_AnimeAiredCopyWithImpl<$Res>
    extends _$AnimeAiredCopyWithImpl<$Res, _$_AnimeAired>
    implements _$$_AnimeAiredCopyWith<$Res> {
  __$$_AnimeAiredCopyWithImpl(
      _$_AnimeAired _value, $Res Function(_$_AnimeAired) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_$_AnimeAired(
      null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnimeAired implements _AnimeAired {
  const _$_AnimeAired(this.from, this.to);

  factory _$_AnimeAired.fromJson(Map<String, dynamic> json) =>
      _$$_AnimeAiredFromJson(json);

  @override
  final DateTime from;
  @override
  final DateTime to;

  @override
  String toString() {
    return 'AnimeAired(from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimeAired &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, from, to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimeAiredCopyWith<_$_AnimeAired> get copyWith =>
      __$$_AnimeAiredCopyWithImpl<_$_AnimeAired>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnimeAiredToJson(
      this,
    );
  }
}

abstract class _AnimeAired implements AnimeAired {
  const factory _AnimeAired(final DateTime from, final DateTime to) =
      _$_AnimeAired;

  factory _AnimeAired.fromJson(Map<String, dynamic> json) =
      _$_AnimeAired.fromJson;

  @override
  DateTime get from;
  @override
  DateTime get to;
  @override
  @JsonKey(ignore: true)
  _$$_AnimeAiredCopyWith<_$_AnimeAired> get copyWith =>
      throw _privateConstructorUsedError;
}
