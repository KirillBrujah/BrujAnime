import 'package:brujanime/models/models.dart';
import 'package:brujanime/utils/debug_functions.dart';
import 'package:brujanime/utils/sealed.dart';
import 'package:brujanime/utils/typedefs/typedefs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_loading_state.dart';

part 'data_loading_cubit.freezed.dart';

class DataLoadingCubit<D extends DataClasses, T>
    extends Cubit<DataLoadingState<T>> {
  DataLoadingCubit() : super(const DataLoadingState.initial());

  Future<void> initialize(
    FetchFunction<T> fetchFunction, {
    required String errorMessage,
  }) async {
    _fetchFunction = fetchFunction;
    this.errorMessage = errorMessage;
  }

  int page = 1;
  ApiPagination? _pagination;

  late final String errorMessage;

  late FetchFunction<T> _fetchFunction;

  Future<void> fetch() async {
    if (_pagination != null) {
      if (!_pagination!.hasNextPage) return;
    }

    if (!state.isInitial) {
      emit(const DataLoadingState.loading());
    }

    try {
      final results = await _fetchFunction(page: page++);

      _pagination = results.pagination;

      emit(DataLoadingState.loaded(results));
    } catch (e) {
      reportError(
        exception: e,
        library: "Data Loading Cubit",
        context: "Load $D data",
      );

      emit(DataLoadingState.error(errorMessage));
    }
  }
}
