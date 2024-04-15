import 'package:auto_route/annotations.dart';
import 'package:brujanime/blocs/blocs.dart';
import 'package:brujanime/utils/typedefs/typedefs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class TopUpcomingPage extends StatelessWidget {
  const TopUpcomingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              context.read<TopUpcomingLoadingCubit>().fetch();
            },
            child: const Text("Fetch"),
          ),
          const _Loading(),
          const _List(),
        ],
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopUpcomingLoadingCubit, DataLoadingState>(
      builder: (context, state) => state.when(
        initial: () => const Text("INITIAL"),
        error: (message) => Text(message),
        loading: () => const Text("LOADING"),
        loaded: (data) => const Text("SUCCESS"),
      ),
    );
  }
}

class _List extends StatelessWidget {
  const _List();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopUpcomingCubit, DataAnimeState>(
      builder: (context, state) => Column(
        children: state.data.map((e) => Text(e.simpleTitle)).toList(),
      ),
    );
  }
}
