import 'package:auto_route/annotations.dart';
import 'package:brujanime/blocs/blocs.dart';
import 'package:brujanime/models/models.dart';
import 'package:brujanime/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class TopAiringPage extends StatelessWidget {
  const TopAiringPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopAiringBloc, TopAiringState>(
      builder: (context, state) => state.when(
        // TODO: Top shimmer loading
        initial: () => const CircularProgressIndicator(),
        // TODO: Top error
        error: (message) => Text(message),
        loaded: (data, _) => _TopAnimeList(list: data),
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
