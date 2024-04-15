import 'package:brujanime/data/source/network/network.dart';
import 'package:brujanime/utils/getit.dart';
import 'package:brujanime/models/api_models/models.dart';

class SeasonsRepository {
  late final SeasonsNetwork _seasonsNetwork;

  SeasonsRepository() {
    _seasonsNetwork = getIt.get<SeasonsNetwork>();
  }

  Future<AnimeList> now({
    int page = 1,
  }) =>
      _seasonsNetwork.getSeason(
        type: 'now',
        page: page,
        limit: 10,
      );
}
