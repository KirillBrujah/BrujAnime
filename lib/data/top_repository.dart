import 'package:brujanime/data/source/network/network.dart';
import 'package:brujanime/models/models.dart';
import 'package:brujanime/utils/getit.dart';

class TopRepository {
  late final TopNetwork _topNetwork;

  TopRepository() {
    _topNetwork = getIt.get<TopNetwork>();
  }

  Future<AnimeList> getAll({
    int page = 1,
  }) {
    throw "ERRRR";
    return _topNetwork.getTop(
      limit: 10,
      page: page,
    );
  }

  Future<AnimeList> getAiring({
    int page = 1,
  }) =>
      _topNetwork.getTop(
        filter: AnimeSearchFilter.airing,
        limit: 10,
        page: page,
      );

  Future<AnimeList> getUpcoming({
    int page = 1,
  }) =>
      _topNetwork.getTop(
        filter: AnimeSearchFilter.upcoming,
        limit: 10,
        page: page,
      );
}
