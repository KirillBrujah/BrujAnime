import 'package:brujanime/models/models.dart';

import 'network_service.dart';

class SeasonsService extends NetworkService {
  Future<ApiResponseList<Anime>> now({
    int? page,
  }) async {
    final response = await dioClient.get(
      'seasons/now',
      queryParameters: {
        if (page != null) "page": page,
      },
    );

    final results = ApiResponseList.fromJson(response.data, Anime.converter);

    return results;
  }
}
