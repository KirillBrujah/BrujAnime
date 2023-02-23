import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_preload_cubit.freezed.dart';
part 'application_preload_state.dart';

class ApplicationPreloadCubit extends Cubit<ApplicationPreloadState> {
  ApplicationPreloadCubit()
      : super(const ApplicationPreloadState.loading(progress: 0));

  Future<void> startLoad() async {
    emit(const ApplicationPreloadState.loading(progress: 0.1));
    for (int i = 0; i < 9; i++) {
      emit(state.copyWith(progress: state.progress + 0.1));
      await Future.delayed(const Duration(milliseconds: 10));
    }
    emit(const ApplicationPreloadState.completed());
  }
}
