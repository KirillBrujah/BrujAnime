import 'package:brujanime/models/models.dart';

import 'network_service.dart';

class RecommendationsNetworkService extends NetworkService {
  Future<ApiResponseList<Anime>> getRecommendations({
    int? page,
  }) async {
    final response = await dioClient.get(
      // TODO: Fix end-point
      // 'recommendations/anime',
      'top/anime',
      queryParameters: {
        if (page != null) "page": page,
      },
    );

    return ApiResponseList.fromJson(response.data, Anime.converter);
  }
}
