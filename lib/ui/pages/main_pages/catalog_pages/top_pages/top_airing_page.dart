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
        initial: () => CircularProgressIndicator(),
        // TODO: Top error
        error: (message) => Text(message),
        data: (data, _) => _TopAnimeList(list: data),
      ),
    );
  }
}

class _TopAnimeList extends StatelessWidget {
  const _TopAnimeList({super.key, required this.list});

  final List<Anime> list;

  @override
  Widget build(BuildContext context) {
    // TODO: Empty list message
    if (list.isEmpty)
      return Center(
        child: Text("Empty"),
      );

    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TopFirstAnimeCard(list.first),
          // TODO: Others

          for (Anime anime in list) TopFirstAnimeCard(anime),
        ],
      ),
    );
  }
}
