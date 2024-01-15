import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'app_router.dart';

class AutoRouteNavigator {
  static VoidCallback navigateTopAiring(BuildContext context) => () {
        context.tabsRouter.setActiveIndex(1);
        final catalogRouter = context.tabsRouter
            .innerRouterOf<StackRouter>(CatalogTab.name)
            ?.innerRouterOf<TabsRouter>(CatalogRoute.name);

        print('CATALOG ROUTER $catalogRouter');

        final topRouter =
            catalogRouter?.innerRouterOf<TabsRouter>(TopCatalogRoute.name);

        print('TOP ROUTER $topRouter');

        catalogRouter?.setActiveIndex(2);

        // TODO: Navigate to all Top Airing
      };
}
