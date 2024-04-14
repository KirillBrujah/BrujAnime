import 'package:brujanime/data/source/network/network.dart';
import 'package:brujanime/models/models.dart';
import 'package:brujanime/utils/getit.dart';

class TopRepository {
  late final TopNetwork _topNetwork;

  TopRepository() {
    _topNetwork = getIt.get<TopNetwork>();
  }

  Future<AnimeList> getAll() => _topNetwork.getTop();

  Future<AnimeList> getAiring({
    int page = 1,
  }) =>
      _topNetwork.getTop(
        filter: AnimeSearchFilter.airing,
        limit: 10,
        page: page,
      );
}
