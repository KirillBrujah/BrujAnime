import 'package:brujanime/models/models.dart';

typedef FetchFunction<T> = Future<ApiResponse<T>> Function({
  required int page,
});
