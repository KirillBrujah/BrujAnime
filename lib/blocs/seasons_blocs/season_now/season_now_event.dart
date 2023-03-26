part of 'season_now_bloc.dart';

@freezed
class SeasonNowEvent with _$SeasonNowEvent {
  const factory SeasonNowEvent.fetch() = _fetch;
}
