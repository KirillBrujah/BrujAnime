import 'package:brujanime/models/api_models/models.dart';
import 'package:brujanime/utils/debug_functions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_models.freezed.dart';

part 'response_models.g.dart';

@freezed
class AnimeList with _$AnimeList {
  const factory AnimeList({
    ApiPagination? pagination,
    required List<Anime> data,
  }) = _AnimeResponseList;

  factory AnimeList.fromJson(Map<String, dynamic> json) =>
      _$AnimeListFromJson(json);
}

@freezed
class ApiResultWrapper<T> with _$ApiResultWrapper {
  const factory ApiResultWrapper({
    required T data,
    ApiPagination? pagination,
  }) = _ApiResultWrapper;
}

@freezed
class AnimeRecommendationsList with _$AnimeRecommendationsList  {
  const factory AnimeRecommendationsList({
    required ApiPagination pagination,
    required List<AnimeRecommendation> data,
  }) = _AnimeRecommendationsList;

  factory AnimeRecommendationsList.fromJson(Map<String, dynamic> json) =>
      _$AnimeRecommendationsListFromJson(json);
}

@freezed
class ApiPagination with _$ApiPagination {
  const factory ApiPagination({
    @JsonKey(name: "last_visible_page") required int lastVisiblePage,
    @JsonKey(name: "has_next_page") required bool hasNextPage,
    // TODO: Remove commented fields
    // @Default(0) @JsonKey(name: "current_page") int currentPage,
    // ApiPaginationItems? items,
  }) = _ApiPagination;

  factory ApiPagination.fromJson(Map<String, dynamic> json) =>
      _$ApiPaginationFromJson(json);
}

@freezed
class ApiPaginationItems with _$ApiPaginationItems {
  const factory ApiPaginationItems({
    @Default(0) int count,
    @Default(0) int total,
    @Default(0) @JsonKey(name: "per_page") int perPage,
  }) = _ApiPaginationItems;

  factory ApiPaginationItems.fromJson(Map<String, dynamic> json) =>
      _$ApiPaginationItemsFromJson(json);
}

@Freezed(
  genericArgumentFactories: true,
  fromJson: false,
  toJson: false,
)
class ApiResponse<T> with _$ApiResponse<T> {
  const ApiResponse._();

  const factory ApiResponse.success(T data) = _ApiResponseSuccess;

  const factory ApiResponse.error(Object exception) = _ApiResponseError;

  factory ApiResponse.fromJson(
      Map<String, dynamic> json, T Function(Map<String, dynamic>) fromJsonT) {
    try {
      return ApiResponse.success(fromJsonT(json));
    } catch (exception) {
      reportError(
        exception: exception,
        library: "ApiResponse convert from ${T.runtimeType}",
        context: prettyJson(json),
      );
      return ApiResponse.error(exception);
    }
  }
}
