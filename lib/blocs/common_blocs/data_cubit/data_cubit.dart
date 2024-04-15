import 'package:brujanime/blocs/blocs.dart';
import 'package:brujanime/generated/l10n.dart';
import 'package:brujanime/utils/sealed.dart';
import 'package:brujanime/utils/typedefs/typedefs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_state.dart';

part 'data_cubit.freezed.dart';

class DataCubit<D extends DataClasses, T> extends Cubit<DataState<T>> {
  DataCubit(
    BuildContext context, {
    required FetchFunction<T> fetchFunction,
    String? errorMessage,
  }) : super(const DataState([])) {
    loadingCubit = context.read<DataLoadingCubit<D, T>>();

    loadingCubit.initialize(
      fetchFunction,
      errorMessage: errorMessage ?? S.current.data_load_error,
    );

    loadingCubit.stream.listen(_loadingListener);
  }

  // TODO: Close subscription to loading cubit?

  late final DataLoadingCubit<D, T> loadingCubit;

  void _loadingListener(DataLoadingState<T> loadingState) {
    loadingState.whenOrNull(
      loaded: (data) {
        emit(DataState(List.of(state.data)..addAll(data.data)));
      },
    );
  }
}
