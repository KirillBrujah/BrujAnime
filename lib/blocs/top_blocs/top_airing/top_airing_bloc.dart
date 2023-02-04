import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'top_airing_event.dart';
part 'top_airing_state.dart';

class TopAiringBloc extends Bloc<TopAiringEvent, TopAiringState> {
  TopAiringBloc() : super(TopAiringInitial()) {
    on<TopAiringEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
