import 'package:brujanime/models/api_models/models.dart';
import 'package:brujanime/utils/debug_functions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'pagination_models.dart';

part 'response_models.g.dart';

abstract class ApiResponse<T> {
  ApiPagination? pagination;
  final List<T> data;

  ApiResponse({this.pagination, required this.data});
}

@JsonSerializable()
class AnimeList extends ApiResponse<Anime> {
  AnimeList({required super.data, super.pagination});

  factory AnimeList.fromJson(Map<String, dynamic> json) =>
      _$AnimeListFromJson(json);
}

@JsonSerializable()
class AnimeRecommendationsList extends ApiResponse<AnimeRecommendation> {
  AnimeRecommendationsList({required super.data, super.pagination});

  factory AnimeRecommendationsList.fromJson(Map<String, dynamic> json) =>
      _$AnimeRecommendationsListFromJson(json);
}
