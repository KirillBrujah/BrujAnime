import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum AnimeType {
  @JsonValue("TV")
  tv("TV"),
  @JsonValue("Movie")
  movie("Movie"),
  @JsonValue("OVA")
  ova("OVA"),
  @JsonValue("Special")
  special("Special"),
  @JsonValue("ONA")
  ona("ONA"),
  @JsonValue("Music")
  music("Music");

  const AnimeType(this.label);

  final String label;

  @override
  String toString() => name;
}

enum AnimeSearchFilter {
  airing,
  upcoming,
  bypopularity,
  favorite;

  @override
  String toString() => name;
}

enum ArtworkTypes {
  anime,
  manga;

  @override
  String toString() => name;
}
