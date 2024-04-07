import 'dart:math';

import 'package:auto_route/annotations.dart';
import 'package:brujanime/blocs/blocs.dart';
import 'package:brujanime/generated/l10n.dart';
import 'package:brujanime/ui/widgets/common_widgets/lists.dart';
import 'package:brujanime/ui/widgets/home_widgets/widgets.dart';
import 'package:brujanime/utils/navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _Header(),
            SizedBox(height: 30),
            _TopAiring(),
            SizedBox(height: 30),
            _Recommendations(),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SeasonNowBloc, SeasonNowState>(
      builder: (context, state) {
        return state.when(
          initial: () => const HomeHeaderLoading(),
          error: (message) => HomeHeaderError(message),
          data: (data, _) {
            final season = data
                .where((anime) => anime.images?.maxSizeImage != null)
                .toList();
            return HomeHeaderCarousel(
              list: season.sublist(0, min(8, season.length)),
            );
          },
        );
      },
    );
  }
}

class _TopAiring extends StatelessWidget {
  const _TopAiring();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopAiringBloc, TopAiringState>(
      bloc: context.read<TopAiringBloc>()..add(const TopAiringEvent.fetch()),
      builder: (context, state) => HorizontalList(
        title: S.of(context).top_airing,
        onNavigateTap: AutoRouteNavigator.navigateTopAiring(context),
        child: state.when(
          initial: () => const HorizontalListLoading(),
          error: (message) => HorizontalListError(message),
          loaded: (data, _) => HorizontalListData(
            data: data.sublist(
              0,
              min(10, data.length),
            ),
          ),
        ),
      ),
    );
  }
}

class _Recommendations extends StatelessWidget {
  const _Recommendations();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnimeRecommendationsBloc, AnimeRecommendationsState>(
      builder: (context, state) => state.when(
        initial: () => const Center(child: CircularProgressIndicator()),
        error: (message) => Text(message),
        loaded: (data, pagination) => Text('${data.length}'),
      ),
    );
  }
}
