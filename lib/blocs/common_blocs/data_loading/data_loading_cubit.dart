import 'package:brujanime/models/models.dart';
import 'package:brujanime/utils/debug_functions.dart';
import 'package:brujanime/utils/typedefs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_loading_state.dart';

part 'data_loading_cubit.freezed.dart';



class DataLoadingCubit<C, T> extends Cubit<DataLoadingState<T>> {
  DataLoadingCubit() : super(const DataLoadingState.initial());

  Future<void> initialize(
    FetchFunction<T> fetchFunction, {
    required String errorMessage,
  }) async {
    this.fetchFunction = fetchFunction;
    this.errorMessage = errorMessage;
  }

  int page = 1;
  ApiPagination? _pagination;

  late final String errorMessage;

  late FetchFunction<T> fetchFunction;

  Future<void> fetch() async {
    if (_pagination != null) {
      if (!_pagination!.hasNextPage) return;
    }

    if (!state.isInitial) {
      emit(const DataLoadingState.loading());
    }

    try {
      final results = await fetchFunction(page: page++);

      _pagination = results.pagination;

      emit(DataLoadingState.loaded(results.data));
    } catch (e) {
      reportError(
        exception: e,
        library: "Data Loading Cubit",
        context: "Load $T data",
      );

      emit(DataLoadingState.error(errorMessage));
    }
  }
}
