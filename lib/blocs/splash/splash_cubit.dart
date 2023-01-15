import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_cubit.freezed.dart';
part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState.loading(progress: 0));

  Future<void> startLoad() async {
    emit(const SplashState.loading(progress: 0.1));
    for (int i = 0; i < 9; i++) {
      emit(state.copyWith(progress: state.progress + 0.1));
      await Future.delayed(const Duration(milliseconds: 10));
    }
    emit(const SplashState.loaded());
  }
}
