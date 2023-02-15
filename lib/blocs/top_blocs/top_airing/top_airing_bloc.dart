import 'package:brujanime/generated/l10n.dart';
import 'package:brujanime/models/models.dart';
import 'package:brujanime/services/network/network.dart';
import 'package:brujanime/utils/debug_functions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_airing_bloc.freezed.dart';
part 'top_airing_event.dart';
part 'top_airing_state.dart';

class TopAiringBloc extends Bloc<TopAiringEvent, TopAiringState> {
  TopAiringBloc() : super(const TopAiringState.initial()) {
    on<_TopAiringLoadEvent>(
      _load,
      // TODO: Debounce
    );
  }

  Future<void> _load(_TopAiringLoadEvent event, emit) async {
    try {
      final results = await TopNetworkService().getTop(
        filter: AnimeSearchFilter.airing,
      );

      emit(TopAiringState.data(
        data: results.successResults,
      ));
    } catch (exc) {
      reportError(
        exception: exc,
        library: "Top Airing Bloc",
        context: "Load Top Airing",
      );
      emit(TopAiringState.error(S.current.top_load_error));
    }
  }
}
