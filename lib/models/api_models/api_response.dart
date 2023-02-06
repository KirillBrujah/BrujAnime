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

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

@Freezed(genericArgumentFactories: true)
class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse.data(T data) = _ApiResponseData;
  const factory ApiResponse.error(Object exception) = _ApiResponseError;

  factory ApiResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$ApiResponseFromJson(json, fromJsonT);
}
