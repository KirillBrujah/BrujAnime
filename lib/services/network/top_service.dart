import 'package:brujanime/models/models.dart';

import 'network_service.dart';

class TopNetworkService extends NetworkService {
  Future<ApiResponseList<Anime>> getTop({
    int? page,
    int? limit,
    AnimeSearchFilter? filter,
    AnimeType? type,
  }) async {
    final response = await dioClient.get(
      'top/anime',
      queryParameters: {
        if (filter != null) "filter": filter,
        if (type != null) "type": type,
        if (page != null) "page": page,
        if (limit != null) "limit": limit
      },
    );

    return ApiResponseList.fromJson(response.data, Anime.converter);
  }
}
