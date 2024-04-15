import 'package:brujanime/blocs/blocs.dart';
import 'package:brujanime/data/repositories.dart';
import 'package:brujanime/generated/l10n.dart';
import 'package:brujanime/models/models.dart';
import 'package:brujanime/utils/getit.dart';
import 'package:brujanime/utils/typedefs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_all_state.dart';

part 'top_all_cubit.freezed.dart';

class TopAllCubit extends Cubit<TopAllState> {
  TopAllCubit(this.loadingCubit) : super(const TopAllState([])) {
    topRepository = getIt.get<TopRepository>();

    loadingCubit.initialize(
      topRepository.getAll,
      errorMessage: S.current.top_load_error,
    );

    loadingCubit.stream.listen(_loadingListener);
  }

  late final TopRepository topRepository;

  final TopAllLoadingCubit loadingCubit;

  void _loadingListener(DataLoadingState<Anime> loadingState) {
    loadingState.whenOrNull(
      loaded: (data) {
        emit(state.copyWith(
          data: List.of(state.data)..addAll(data.data),
        ));
      },
    );
  }
}
