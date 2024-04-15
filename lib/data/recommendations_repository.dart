import 'package:brujanime/data/source/network/network.dart';
import 'package:brujanime/models/api_models/models.dart';
import 'package:brujanime/utils/getit.dart';

class RecommendationsRepository {
  late final RecommendationsNetwork _recommendationsNetwork;

  RecommendationsRepository() {
    _recommendationsNetwork = getIt.get<RecommendationsNetwork>();
  }

  Future<AnimeRecommendationsList> getAll({
    int page = 1,
  }) =>
      _recommendationsNetwork.getRecommendations(page: page);

}
