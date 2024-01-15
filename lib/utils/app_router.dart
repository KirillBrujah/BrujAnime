import 'package:auto_route/auto_route.dart';
import 'package:brujanime/models/models.dart';
import 'package:brujanime/ui/pages/main_pages/pages.dart';
import 'package:brujanime/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';



@AutoRouterConfig(replaceInRouteName: 'Route.page,Route')
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    _mainRoute,
  ];
}



class _CommonRoutes {
  static final anime = AutoRoute(page: AnimeRoute.page);
  static final search = AutoRoute(page: SearchRoute.page);
}


class _MainTabs {
  static final home = AutoRoute(
    initial: true,
    page: HomeTab.page,
    children: [
      AutoRoute(
        page: HomeRoute.page,
        initial: true,
      ),
      _CommonRoutes.anime,
      _CommonRoutes.search,
    ],
  );

  static final catalog = AutoRoute(
    page: CatalogTab.page,
    children: [
      AutoRoute(
        page: CatalogRoute.page,
        initial: true,
        children: [
          AutoRoute(page: ScheduleCatalogRoute.page),
          AutoRoute(page: GenresCatalogRoute.page),
          AutoRoute(page: TopCatalogRoute.page, children: [
            AutoRoute(page: TopAllRoute.page, initial: true),
            AutoRoute(page: TopAiringRoute.page),
            AutoRoute(page: TopUpcomingRoute.page),
          ]),
        ],
      ),
      _CommonRoutes.anime,
      _CommonRoutes.search,
    ],
  );

  static final favorite = AutoRoute(
    page: FavoriteTab.page,
    children: [
      AutoRoute(
        page: FavoriteRoute.page,
        initial: true,
      ),
      _CommonRoutes.anime,
      _CommonRoutes.search,
    ],
  );

  static final settings = AutoRoute(
    page: SettingsTab.page,
    children: [
      AutoRoute(
        page: SettingsRoute.page,
        initial: true,
      ),
      _CommonRoutes.search,
    ],
  );

  static final List<AutoRoute> tabs = [home, catalog, favorite, settings];
}

final _mainRoute = AutoRoute(
  page: MainRoute.page,
  children: _MainTabs.tabs,
);
/*

@MaterialAutoRouter(
  replaceInRouteName: 'Route.page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashRoute.page, initial: true),
    _mainRoute,
  ],
)
class AppRouter extends _$AppRouter {}

*/
