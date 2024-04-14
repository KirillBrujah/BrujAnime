import 'package:brujanime/models/models.dart';

typedef FetchFunction<T> = Future<ApiResultWrapper<T>> Function({
  required int page,
});
