part of 'splash_cubit.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.loading({required double progress}) =
      _SplashLoadingState;
  const factory SplashState.loaded({
    @Default(1.0) double progress,
    // TODO: other objects of preloading
  }) = _SplashLoadedState;
}
