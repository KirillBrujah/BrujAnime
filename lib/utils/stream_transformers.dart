import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

const debounceDuration = Duration(milliseconds: 500);

EventTransformer<E> debounceTransformer<E>(Duration duration) {
  return (events, mapper) {
    return events.debounceTime(duration).asyncExpand(mapper);
  };
}
