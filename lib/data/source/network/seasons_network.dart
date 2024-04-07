import 'package:brujanime/models/api_models/models.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'seasons_network.g.dart';

@RestApi(baseUrl: 'seasons')
abstract class SeasonsNetwork {
  factory SeasonsNetwork(Dio dio) = _SeasonsNetwork;

  @GET("/{type}")
  Future<AnimeResponseList> getSeason({
    @Path("type") required String type,
    @Query("page") int? page,
  });
}
