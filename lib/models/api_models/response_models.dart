// abstract class APIResult<T> {}
//
// class APIResultSuccess<T> {
//   final T value;
//
//   APIResultSuccess(this.value);
// }
//
// class APIResultError<T> {
//   final Object exception;
//
//   APIResultError(this.exception);
// }
//
//

import 'package:brujanime/utils/debug_functions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_models.freezed.dart';
// part 'api_response.g.dart';

@Freezed(genericArgumentFactories: true)
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

  bool get isSuccess => maybeMap(
        orElse: () => false,
        success: (_) => true,
      );

  bool get isError => maybeMap(
        orElse: () => false,
        error: (_) => true,
      );
}

class ApiResponseList<T> {
  final List<ApiResponse<T>> results;

  ApiResponseList._(this.results);

  factory ApiResponseList.fromJson(
    List<dynamic> list,
    T Function(Map<String, dynamic>) fromJsonT,
  ) {
    return ApiResponseList._(
      list.map((json) => ApiResponse.fromJson(json, fromJsonT)).toList(),
    );
  }

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
