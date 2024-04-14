import 'package:brujanime/blocs/blocs.dart';
import 'package:brujanime/models/models.dart';

typedef FetchFunction<T> = Future<ApiResultWrapper<T>> Function({
  required int page,
});

/// Types for Data Loading cubits
typedef TopUpcomingLoadingCubit = DataLoadingCubit<TopUpcomingCubit, List<Anime>>;