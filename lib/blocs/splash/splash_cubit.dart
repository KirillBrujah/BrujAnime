import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashInitial());

  Future<void> startLoad() async {
    emit(const SplashInitial());
    emit(const SplashUpdateProgress(0.01));
    for (int i = 0; i < 9; i++) {
      emit(SplashUpdateProgress(state.progress + 0.1));
      await Future.delayed(const Duration(milliseconds: 300));
    }
    emit(const SplashLoadComplete());
  }
}
