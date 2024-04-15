import 'package:auto_route/annotations.dart';
import 'package:brujanime/blocs/blocs.dart';
import 'package:brujanime/models/models.dart';
import 'package:brujanime/ui/widgets/widgets.dart';
import 'package:brujanime/utils/typedefs/typedefs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class TopAiringPage extends StatelessWidget {
  const TopAiringPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopAiringLoadingCubit, DataLoadingState>(
      builder: (context, state) => state.maybeWhen(
        initial: () => const TopListLoading(),
        // TODO: Top error
        error: (message) => Text(message),

        orElse: () => BlocBuilder<TopAiringCubit, DataAnimeState>(
          builder: (context, state) => _TopAnimeList(list: state.data),
        ),
      ),
    );
  }
}

class _TopAnimeList extends StatelessWidget {
  const _TopAnimeList({required this.list});

  final List<Anime> list;

  @override
  Widget build(BuildContext context) {
    if (list.isEmpty) {
      return const EmptyListMessage();
    }

    return SingleChildScrollView(
      child: Column(
        children: [
          TopFirstAnimeCard(list.first),
          const SizedBox(height: 30),
          for (int i = 1; i < list.sublist(1).length; i++)
            TopAnimeCard(list[i], i + 1),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}