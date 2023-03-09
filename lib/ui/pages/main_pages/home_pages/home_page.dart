import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:brujanime/blocs/blocs.dart';
import 'package:brujanime/generated/l10n.dart';
import 'package:brujanime/ui/widgets/common_widgets/lists.dart';
import 'package:brujanime/ui/widgets/home_widgets/widgets.dart';
import 'package:brujanime/utils/app_router.dart';
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
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopAiringBloc, TopAiringState>(
      builder: (context, state) {
        return state.when(
          initial: () => const HomeHeaderLoading(),
          error: (message) => HomeHeaderError(message),
          data: (data, _) {
            final recommendations = data
                .where((anime) => anime.images?.maxSizeImage != null)
                .toList();
            return HomeHeaderCarousel(
              list: recommendations.sublist(0, min(8, recommendations.length)),
            );
          },
        );
      },
    );
  }
}

class _TopAiring extends StatelessWidget {
  const _TopAiring();

  VoidCallback _handleNavigate(BuildContext context) => () {
        final catalogRouter = context.tabsRouter
            .innerRouterOf<StackRouter>(CatalogTabRoute.name)
            ?.innerRouterOf<TabsRouter>(CatalogRoute.name);
        catalogRouter?.setActiveIndex(2);
        context.tabsRouter.setActiveIndex(1);
        /*
            final ordersRouter =
            context.tabsRouter.innerRouterOf<StackRouter>(OrdersTabRoute.name);

            if (ordersRouter == null) return;

            if (ordersRouter.current.name == OrderRoute.name) {
              ordersRouter.replace(OrderRoute(orderId: orderId));
            } else {
              ordersRouter.push(OrderRoute(orderId: orderId));
            }

            context.tabsRouter.setActiveIndex(2);
            */

        // TODO: Navigate to all Top Airing
      };

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopAiringBloc, TopAiringState>(
      bloc: context.read<TopAiringBloc>()..add(const TopAiringEvent.fetch()),
      builder: (context, state) => HorizontalList(
        title: S.of(context).top_airing,
        onNavigateTap: _handleNavigate(context),
        child: state.when(
          initial: () => const HorizontalListLoading(),
          error: (message) => HorizontalListError(message),
          data: (data, _) => HorizontalListData(
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
  const _Recommendations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnimeRecommendationsBloc, AnimeRecommendationsState>(
      builder: (context, state) => state.when(
        initial: () => CircularProgressIndicator(),
        error: (message) => Text(message),
        data: (data, pagination) => Text('${data.length}'),
      ),
    );
  }
}
