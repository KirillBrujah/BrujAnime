import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_models.freezed.dart';
part 'pagination_models.g.dart';

@freezed
class ApiPagination with _$ApiPagination {
  const factory ApiPagination({
    @JsonKey(name: "last_visible_page") required int lastVisiblePage,
    @JsonKey(name: "has_next_page") required bool hasNextPage,
    @JsonKey(name: "current_page") required int currentPage,
    required ApiPaginationItems items,
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
