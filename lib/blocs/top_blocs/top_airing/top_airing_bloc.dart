import 'package:brujanime/models/api_models/anime_models/anime_general_models.dart';
import 'package:brujanime/models/models.dart';
import 'package:brujanime/services/network/network.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_airing_bloc.freezed.dart';
part 'top_airing_event.dart';
part 'top_airing_state.dart';

class TopAiringBloc extends Bloc<TopAiringEvent, TopAiringState> {
  TopAiringBloc() : super(const TopAiringState.initial()) {
    on<_TopAiringLoadEvent>(_load);
  }

  Future<void> _load(_TopAiringLoadEvent event, emit) async {
    try {
      final data = await TopNetworkService().getTop();

      ApiResponse;

      emit(TopAiringState.data(
        data: [],
      ));
    } catch (e) {
      print(e);
    }
  }
}
