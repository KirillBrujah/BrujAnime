import 'package:brujanime/models/models.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'https://api.jikan.moe/v4/')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/top/anime')
  Future<AnimeResponseList> getTop({
    @Query("page") int? page,
    @Query("limit") int? limit,
    @Query("filter") AnimeSearchFilter? filter,
    @Query("type") AnimeType? type,
  });

  @GET("/recommendations/anime")
  Future<AnimeResponseList> getRecommendations({
    @Query("page") int? page,
  });

  @GET("seasons/{type}")
  Future<AnimeResponseList> getSeason({
    @Path("type") required String type,
    @Query("page") int? page,
  });
}
