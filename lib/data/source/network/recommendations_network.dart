import 'package:brujanime/models/api_models/models.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'recommendations_network.g.dart';

@RestApi(baseUrl: 'recommendations')
abstract class RecommendationsNetwork {
  factory RecommendationsNetwork(Dio dio) = _RecommendationsNetwork;

  @GET("/anime")
  Future<AnimeRecommendationsList> getRecommendations({
    @Query("page") int? page,
  });
//
}
