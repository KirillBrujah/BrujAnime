import 'package:brujanime/blocs/blocs.dart';
import 'package:brujanime/data/repositories.dart';
import 'package:brujanime/generated/l10n.dart';
import 'package:brujanime/models/models.dart';
import 'package:brujanime/utils/debug_functions.dart';
import 'package:brujanime/utils/getit.dart';
import 'package:brujanime/utils/typedefs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_upcoming_state.dart';

part 'top_upcoming_cubit.freezed.dart';

class TopUpcomingCubit extends Cubit<TopUpcomingState> {
  TopUpcomingCubit(this.loadingCubit) : super(const TopUpcomingState([])) {
    topRepository = getIt.get<TopRepository>();

    loadingCubit.initialize(
      topRepository.getAiring,
      errorMessage: S.current.top_load_error,
    );

    loadingCubit.stream.listen(_loadingListener);
  }

  late final TopRepository topRepository;

  final TopUpcomingLoadingCubit loadingCubit;

  void _loadingListener(DataLoadingState<Anime> loadingState) {
    loadingState.whenOrNull(
      loaded: (result) {
        emit(state.copyWith(
          data: List.of(state.data)..addAll(result.data),
        ));
      },
    );
  }

}
