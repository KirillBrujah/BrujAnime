import 'package:brujanime/generated/l10n.dart';
import 'package:brujanime/models/models.dart';
import 'package:brujanime/utils/debug_functions.dart';
import 'package:brujanime/utils/stream_transformers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_recommendations_bloc.freezed.dart';
part 'anime_recommendations_event.dart';
part 'anime_recommendations_state.dart';

@Deprecated("Maybe will not be used in final version")
class AnimeRecommendationsBloc
    extends Bloc<AnimeRecommendationsEvent, AnimeRecommendationsState> {
  AnimeRecommendationsBloc()
      : super(const AnimeRecommendationsState.initial()) {
    on<_AnimeRecommendationsFetchEvent>(
      _fetch,
      transformer: debounceTransformer(debounceDuration),
    );
    on<_AnimeRecommendationsResetEvent>(_reset);
  }

  Future<void> _fetch(_AnimeRecommendationsFetchEvent event, emit) async {
    final pagination = state.pagination;
    if (pagination?.hasNextPage == false) return;

    try {
      // final recommendations = await
      // final results = await RecommendationsNetworkService().getRecommendations(
      //     // TODO: Fix pagination
      //     // page: pagination != null ? pagination.currentPage + 1 : 1,
      //     );
      //
      // emit(AnimeRecommendationsState.data(
      //   list: results.successResults,
      //   pagination: results.pagination!,
      // ));
    } catch (exc) {
      reportError(
        exception: exc,
        library: "Anime recommendations Bloc",
        context: "Load recommendations",
      );
      emit(AnimeRecommendationsState.error(
          S.current.recommendations_load_error));
    }
  }

  void _reset(_AnimeRecommendationsResetEvent event, emit) {
    emit(const AnimeRecommendationsState.initial());
    add(const AnimeRecommendationsEvent.fetch());
  }
}
