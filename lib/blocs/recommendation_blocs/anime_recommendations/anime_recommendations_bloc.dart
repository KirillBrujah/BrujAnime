import 'package:brujanime/generated/l10n.dart';
import 'package:brujanime/models/models.dart';
import 'package:brujanime/services/network/network.dart';
import 'package:brujanime/utils/debug_functions.dart';
import 'package:brujanime/utils/stream_transformers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_recommendations_bloc.freezed.dart';
part 'anime_recommendations_event.dart';
part 'anime_recommendations_state.dart';

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
      final results = await RecommendationsNetworkService().getRecommendations(
        page: pagination != null ? pagination.currentPage + 1 : 1,
      );

      print("RECOMMENDS = ${results.successResults.length}");

      await Future.delayed(const Duration(seconds: 2));

      emit(AnimeRecommendationsState.data(
        data: results.successResults,
        pagination: results.pagination!,
      ));
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
