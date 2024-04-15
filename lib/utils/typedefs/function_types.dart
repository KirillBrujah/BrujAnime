import 'package:brujanime/blocs/blocs.dart';
import 'package:brujanime/models/models.dart';
import 'package:brujanime/utils/sealed.dart';

typedef FetchFunction<T> = Future<ApiResponse<T>> Function({
  required int page,
});
