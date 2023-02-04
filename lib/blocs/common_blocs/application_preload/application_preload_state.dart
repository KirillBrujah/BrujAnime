part of 'application_preload_cubit.dart';

@freezed
class ApplicationPreloadState with _$ApplicationPreloadState {
  const factory ApplicationPreloadState.loading({required double progress}) =
      _ApplicationPreloadLoadingState;
  const factory ApplicationPreloadState.completed({
    @Default(1.0) double progress,
    // TODO: other objects of preloading
  }) = _ApplicationPreloadCompleteState;
}
