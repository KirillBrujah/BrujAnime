import 'package:brujanime/data/source/network/network.dart';
import 'package:brujanime/models/models.dart';
import 'package:brujanime/utils/getit.dart';

class TopRepository {
  late final TopNetwork _topNetwork;

  TopRepository() {
    _topNetwork = getIt.get<TopNetwork>();
  }

  Future<AnimeResponseList> getAll() => _topNetwork.getTop();

  Future<AnimeResponseList> getAiring() =>
      _topNetwork.getTop(filter: AnimeSearchFilter.airing);
}
