part of 'top_upcoming_cubit.dart';

@freezed
class TopUpcomingState with _$TopUpcomingState {
  const factory TopUpcomingState({
    @Default([]) List<Anime> data,
  }) = _TopUpcomingState;
}