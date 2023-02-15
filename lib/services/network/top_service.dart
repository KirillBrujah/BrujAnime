import 'package:brujanime/models/api_models/models.dart';

import 'network_service.dart';

class TopNetworkService extends NetworkService {
  Future<ApiResponseList<Anime>> getTop(
      // TODO: Filter
      ) async {
    final response = await dioClient.get('top/anime?filter=airing');

    return ApiResponseList.fromJson(response.data["data"], Anime.converter);
    /*
    final List<ApiResponse<Anime>> results = [];

    for (Map<String, dynamic> json in response.data["data"]) {
      // results.add(ApiResult.fromJson(json, Anime.converter));

      results.add(ApiResponse.fromJson(json, Anime.fromJson));
      //
      // try {
      //   results.add(ApiResponse.data(Anime.fromJson(json)));
      // } catch (e) {
      //   //
      //   results.add(ApiResponse.error(e));
      // }

      // ApiResponse.fromJson(json, Anime.fromJson);
    }

    return results;*/
  }
}
