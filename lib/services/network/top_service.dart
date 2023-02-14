import 'package:brujanime/models/api_models/models.dart';

import 'network_service.dart';

class TopNetworkService extends NetworkService {
  Future<List<ApiResponse<Anime>>> getTop() async {
    final response = await dioClient.get('top/anime?filter=airing');

    final List<ApiResponse<Anime>> results = [];

    for (Map<String, dynamic> json in response.data["data"]) {
      print(json);

      try {
        results.add(ApiResponse.data(Anime.fromJson(json)));
      } catch (e) {
        //
        results.add(ApiResponse.error(e));
      }

      // ApiResponse.fromJson(json, Anime.fromJson);
    }

    return results;
  }
}
