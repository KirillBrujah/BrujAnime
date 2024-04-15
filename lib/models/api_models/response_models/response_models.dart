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

  factory AnimeList.fromJson(Map<String, dynamic> json) => _$AnimeListFromJson(json);

}

// @freezed
// class AnimeList with _$AnimeList {
//   const factory AnimeList({
//     ApiPagination? pagination,
//     required List<Anime> data,
//   }) = _AnimeResponseList;
//
//   factory AnimeList.fromJson(Map<String, dynamic> json) =>
//       _$AnimeListFromJson(json);
// }

@JsonSerializable()
class AnimeRecommendationsList extends ApiResponse<AnimeRecommendation> {
  AnimeRecommendationsList({required super.data, super.pagination});


  factory AnimeRecommendationsList.fromJson(Map<String, dynamic> json) =>
      _$AnimeRecommendationsListFromJson(json);

}
//
// @freezed
// class AnimeRecommendationsList with _$AnimeRecommendationsList {
//   const factory AnimeRecommendationsList({
//     required ApiPagination pagination,
//     required List<AnimeRecommendation> data,
//   }) = _AnimeRecommendationsList;
//
//   factory AnimeRecommendationsList.fromJson(Map<String, dynamic> json) =>
//       _$AnimeRecommendationsListFromJson(json);
// }



// @freezed
// class ApiResultWrapper<T> with _$ApiResultWrapper {
//   const factory ApiResultWrapper({
//     required T data,
//     ApiPagination? pagination,
//   }) = _ApiResultWrapper;
// }

//
// @Freezed(
//   genericArgumentFactories: true,
//   fromJson: false,
//   toJson: false,
// )
// class ApiResponse<T> with _$ApiResponse<T> {
//   const ApiResponse._();
//
//   const factory ApiResponse.success(T data) = _ApiResponseSuccess;
//
//   const factory ApiResponse.error(Object exception) = _ApiResponseError;
//
//   factory ApiResponse.fromJson(
//       Map<String, dynamic> json, T Function(Map<String, dynamic>) fromJsonT) {
//     try {
//       return ApiResponse.success(fromJsonT(json));
//     } catch (exception) {
//       reportError(
//         exception: exception,
//         library: "ApiResponse convert from ${T.runtimeType}",
//         context: prettyJson(json),
//       );
//       return ApiResponse.error(exception);
//     }
//   }
// }
