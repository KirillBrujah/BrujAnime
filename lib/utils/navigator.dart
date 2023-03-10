import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'app_router.dart';

class AutoRouteNavigator {
  static VoidCallback navigateTop(BuildContext context) => () {
        context.tabsRouter.setActiveIndex(1);
        final catalogRouter = context.tabsRouter
            .innerRouterOf<StackRouter>(CatalogTabRoute.name)
            ?.innerRouterOf<TabsRouter>(CatalogRoute.name);
        catalogRouter?.setActiveIndex(2);
        // TODO: Navigate to all Top Airing
      };
}
