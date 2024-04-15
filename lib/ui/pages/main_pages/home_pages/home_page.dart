import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:brujanime/blocs/blocs.dart';
import 'package:brujanime/generated/l10n.dart';
import 'package:brujanime/ui/widgets/common_widgets/lists.dart';
import 'package:brujanime/ui/widgets/home_widgets/widgets.dart';
import 'package:brujanime/utils/app_router.dart';
import 'package:brujanime/utils/getit.dart';
import 'package:brujanime/utils/typedefs/typedefs.dart';
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
      bloc: context.read<SeasonNowBloc>()..add(const SeasonNowEvent.fetch()),
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
    final s = getIt.get<S>();

    return HorizontalList(
      title: s.top_airing,
      onNavigateTap: () {
        context.tabsRouter.navigate(const TopAiringRoute());
      },
      child: BlocBuilder<TopAiringCubit, DataAnimeState>(
        builder: (context, state) {
          if (state.data.isEmpty) {
            return BlocBuilder<TopAiringLoadingCubit, DataLoadingState>(
              bloc: context.read<TopAiringLoadingCubit>()..fetch(),
              builder: (context, state) => state.maybeWhen(
                initial: () => const HorizontalListLoading(),
                error: (message) => HorizontalListError(message),
                orElse: () => HorizontalListError(s.list_is_empty),
              ),
            );
          }

          return HorizontalListData(
            data: state.data.sublist(
              0,
              min(10, state.data.length),
            ),
          );
        },
      ),
    );
  }
}

class _Recommendations extends StatelessWidget {
  const _Recommendations();

  @override
  Widget build(BuildContext context) {
    final s = getIt.get<S>();
    return HorizontalList(
      title: s.recommendations,
      // TODO: Navigation?
      child: BlocBuilder<RecommendationsCubit, DataRecommendationState>(
        builder: (context, state) {
          if (state.data.isEmpty) {
            return BlocBuilder<RecommendationsLoadingCubit, DataLoadingState>(
              bloc: context.read<RecommendationsLoadingCubit>()..fetch(),
              builder: (context, state) => state.maybeWhen(
                initial: () => const HorizontalListLoading(),
                error: (message) => HorizontalListError(message),
                orElse: () => HorizontalListError(s.list_is_empty),
              ),
            );
          }

          // TODO: Recommendations list
          return Text('${state.data.length}');
        },
      ),
    );
  }
}
