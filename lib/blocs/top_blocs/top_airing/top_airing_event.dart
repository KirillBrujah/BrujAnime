part of 'top_airing_bloc.dart';

@freezed
class TopAiringEvent {
  const factory TopAiringEvent.fetch() = _TopAiringFetchEvent;
  const factory TopAiringEvent.reset() = _TopAiringResetEvent;
}
