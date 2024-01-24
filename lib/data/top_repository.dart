import 'package:brujanime/data/source/network/rest_client.dart';
import 'package:brujanime/models/models.dart';
import 'package:brujanime/utils/getit.dart';

class TopRepository {
  late final RestClient restClient;

  TopRepository() {
    restClient = getIt.get<RestClient>();
  }

  Future<AnimeResponseList> getAll() => restClient.getTop();

  Future<AnimeResponseList> getAiring() =>
      restClient.getTop(filter: AnimeSearchFilter.airing);
}
