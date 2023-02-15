enum AnimeSearchType {
  tv,
  movie,
  ova,
  special,
  ona,
  music;

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
