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
  TopUpcomingCubit({
    required this.loadingCubit,
  }) : super(const TopUpcomingState()) {
    topRepository = getIt.get<TopRepository>();

    loadingCubit.initialize(
      _fetch,
      errorMessage: S.current.top_load_error,
    );

    loadingCubit.stream.listen(_loadingListener);
  }

  void _loadingListener(DataLoadingState<List<Anime>> loadingState) {
    loadingState.whenOrNull(
      loaded: (data) {
        emit(state.copyWith(
          data: List.of(state.data)..addAll(data),
        ));
      },
    );
  }

  late final TopRepository topRepository;

  final TopUpcomingLoadingCubit loadingCubit;

  Future<ApiResultWrapper<List<Anime>>> _fetch({required int page}) async {
    final results = await topRepository.getAiring(page: page);

    return ApiResultWrapper(
      data: results.data,
      pagination: results.pagination,
    );
  }
}
