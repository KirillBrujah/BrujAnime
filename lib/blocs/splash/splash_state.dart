part of 'splash_cubit.dart';

abstract class SplashState extends Equatable {
  final double progress;
  const SplashState(this.progress);
}

class SplashInitial extends SplashState {
  const SplashInitial() : super(0);

  @override
  List<Object> get props => [progress];
}

class SplashUpdateProgress extends SplashState {
  const SplashUpdateProgress(double progress) : super(progress);

  @override
  List<Object> get props => [progress];
}

class SplashLoadComplete extends SplashState {
  const SplashLoadComplete() : super(1.0);

  @override
  List<Object> get props => [progress];
}
