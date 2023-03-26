import 'package:bloc/bloc.dart';
import 'package:brujanime/generated/l10n.dart';
import 'package:brujanime/models/models.dart';
import 'package:brujanime/services/network/network.dart';
import 'package:brujanime/utils/debug_functions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'season_now_bloc.freezed.dart';
part 'season_now_event.dart';
part 'season_now_state.dart';

class SeasonNowBloc extends Bloc<SeasonNowEvent, SeasonNowState> {
  SeasonNowBloc() : super(const SeasonNowState.initial()) {
    on<_fetch>(_handleFetch);
  }

  Future<void> _handleFetch(_fetch event, emit) async {
    emit(const SeasonNowState.initial());
    try {
      final result = await SeasonsService().now();
      emit(SeasonNowState.data(
        list: result.successResults,
        pagination: result.pagination,
      ));
      // TODO: Load season
    } catch (e) {
      reportError(
        exception: e,
        library: "Season now Bloc",
        context: "Fetch season now",
      );
      emit(SeasonNowState.error(S.current.season_now_load_error));
    }
  }
}
