import 'package:brujanime/models/models.dart';

import 'network_service.dart';

class RecommendationsNetworkService extends NetworkService {
  Future<ApiResponseList<AnimeRecommendation>> getRecommendations({
    int? page,
  }) async {
    final response = await dioClient.get(
      'recommendations/anime',
      queryParameters: {
        if (page != null) "page": page,
      },
    );

    final results =
        ApiResponseList.fromJson(response.data, AnimeRecommendation.converter);

    return results;
  }
}
