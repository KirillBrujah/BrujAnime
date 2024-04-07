import 'package:brujanime/generated/l10n.dart';
import 'package:brujanime/models/models.dart';
import 'package:brujanime/data/repositories.dart';
import 'package:brujanime/utils/debug_functions.dart';
import 'package:brujanime/utils/getit.dart';
import 'package:brujanime/utils/stream_transformers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_airing_bloc.freezed.dart';

part 'top_airing_event.dart';

part 'top_airing_state.dart';

class TopAiringBloc extends Bloc<TopAiringEvent, TopAiringState> {
  TopAiringBloc() : super(const TopAiringState.initial()) {
    on<_TopAiringFetchEvent>(
      _fetch,
      transformer: debounceTransformer(debounceDuration),
    );
    on<_TopAiringResetEvent>(_reset);

    topRepository = getIt.get<TopRepository>();
  }

  late final TopRepository topRepository;

  int page = 0;

  Future<void> _fetch(_TopAiringFetchEvent event, emit) async {
    final pagination = state.pagination;
    if (pagination?.hasNextPage == false) return;

    try {
      final results = await topRepository.getAiring(
          // page: page++,
          // TODO: Fix pagination
          // page: pagination != null ? pagination.currentPage + 1 : 1,
          );

      emit(TopAiringState.loaded(
        list: results.data,
        pagination: results.pagination!,
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

  void _reset(_TopAiringResetEvent event, emit) {
    emit(const TopAiringState.initial());
    add(const TopAiringEvent.fetch());
  }
}
