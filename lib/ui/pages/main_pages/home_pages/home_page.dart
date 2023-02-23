import 'dart:math';

import 'package:brujanime/blocs/blocs.dart';
import 'package:brujanime/generated/l10n.dart';
import 'package:brujanime/ui/widgets/common_widgets/lists.dart';
import 'package:brujanime/ui/widgets/home_widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            _Recommendations(),
            SizedBox(height: 30),
            _TopAiring(),
          ],
        ),
      ),
    );
  }
}

class _Recommendations extends StatelessWidget {
  const _Recommendations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnimeRecommendationsBloc, AnimeRecommendationsState>(
      builder: (context, state) => state.when(
        // TODO: Change loading widget
        initial: () => const Center(child: CircularProgressIndicator()),
        error: (message) => Text(message),
        data: (data, _) {
          final recommendations = data
              .where((anime) => anime.images?.maxSizeImage != null)
              .toList();
          return RecommendationsCarousel(
            list: recommendations.sublist(0, min(8, recommendations.length)),
          );
        },
      ),
    );
  }
}

class _TopAiring extends StatelessWidget {
  const _TopAiring({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopAiringBloc, TopAiringState>(
      bloc: context.read<TopAiringBloc>()..add(const TopAiringEvent.fetch()),
      builder: (context, state) => state.when(
        // TODO: Change loading widget
        initial: () => const Center(child: CircularProgressIndicator()),
        data: (data, _) => HorizontalAnimeList(
          list: data.sublist(
            0,
            min(10, data.length),
          ),
          title: S.of(context).top_airing,
          onNavigateTap: () {
            // TODO: Navigate to all Top Airing
          },
        ),
        error: (message) => Text(message),
      ),
    );
  }
}
