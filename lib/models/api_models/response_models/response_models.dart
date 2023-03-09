// ignore_for_file: invalid_annotation_target

import 'package:brujanime/utils/debug_functions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_models.freezed.dart';
part 'response_models.g.dart';

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

class ApiResponseList<T> {
  final List<ApiResponse<T>> results;
  final ApiPagination? pagination;

  ApiResponseList._({required this.results, this.pagination});

  factory ApiResponseList.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) fromJsonT,
  ) =>
      ApiResponseList._(
        results: (json["data"] as List<dynamic>)
            .map((json) => ApiResponse.fromJson(json, fromJsonT))
            .toList(),
        pagination: json["pagination"] != null
            ? ApiPagination.fromJson(json["pagination"])
            : null,
      );

  List<T> get successResults => results
      .whereType<_ApiResponseSuccess<T>>()
      .map((success) => success.data)
      .toList();

  List<Object> get errorResults => results
      .whereType<_ApiResponseError<T>>()
      .map((error) => error.exception)
      .toList();

  bool get hasErrors => errorResults.isNotEmpty;
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
