import 'package:brujanime/models/models.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'top_network.g.dart';

@RestApi(baseUrl: 'top/')
abstract class TopNetwork {
  factory TopNetwork(Dio dio) = _TopNetwork;

  @GET('/anime')
  Future<AnimeList> getTop({
    @Query("page") int? page,
    @Query("limit") int? limit,
    @Query("filter") AnimeSearchFilter? filter,
    @Query("type") AnimeType? type,
  });
}


// class TopNetworkService extends NetworkService {
//   Future<ApiResponseList<Anime>> getTop({
//     int? page,
//     int? limit,
//     AnimeSearchFilter? filter,
//     AnimeType? type,
//   }) async {
//     final response = await dioClient.get(
//       'top/anime',
//       queryParameters: {
//         if (filter != null) "filter": filter,
//         if (type != null) "type": type,
//         if (page != null) "page": page,
//         if (limit != null) "limit": limit
//       },
//     );
//
//     return ApiResponseList.fromJson(response.data, Anime.converter);
//   }
// }
