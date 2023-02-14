part of 'top_airing_bloc.dart';

@freezed
class TopAiringEvent {
  const factory TopAiringEvent.load() = _TopAiringLoadEvent;
}
