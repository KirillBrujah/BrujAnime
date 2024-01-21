import 'package:brujanime/data/source/network/rest_client.dart';
import 'package:brujanime/models/models.dart';
import 'package:brujanime/utils/getit.dart';

class TopRepository {
  Future<AnimeResponseList> getAll() async {
    final results = getIt.get<RestClient>().getTop();
    return results;
  }
}
