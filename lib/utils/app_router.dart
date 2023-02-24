import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:brujanime/models/models.dart';
import 'package:brujanime/ui/pages/main_pages/pages.dart';
import 'package:brujanime/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

class _CommonRoutes {
  static const anime = AutoRoute(page: AnimePage);
  static const search = AutoRoute(page: SearchPage);
}

class _MainTabs {
  static const home = AutoRoute(
    name: "HomeTabRoute",
    initial: true,
    page: EmptyRouterPage,
    children: [
      AutoRoute(
        page: HomePage,
        initial: true,
      ),
      _CommonRoutes.anime,
      _CommonRoutes.search,
    ],
  );

  static const catalog = AutoRoute(
    name: "CatalogTabRoute",
    page: EmptyRouterPage,
    children: [
      AutoRoute(
        page: CatalogPage,
        initial: true,
        children: [
          AutoRoute(page: ScheduleCatalogPage),
          AutoRoute(page: GenresCatalogPage),
          AutoRoute(page: TopCatalogPage),
        ],
      ),
      _CommonRoutes.anime,
      _CommonRoutes.search,
    ],
  );

  static const favorite = AutoRoute(
    name: "FavoriteTabRoute",
    page: EmptyRouterPage,
    children: [
      AutoRoute(
        page: FavoritePage,
        initial: true,
      ),
      _CommonRoutes.anime,
      _CommonRoutes.search,
    ],
  );

  static const settings = AutoRoute(
    name: "SettingsTabRoute",
    page: EmptyRouterPage,
    children: [
      AutoRoute(
        page: SettingsPage,
        initial: true,
      ),
      _CommonRoutes.search,
    ],
  );

  static const List<AutoRoute> tabs = [home, catalog, favorite, settings];
}

const _mainRoute = AutoRoute(
  page: MainPage,
  children: _MainTabs.tabs,
);

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    _mainRoute,
  ],
)
class AppRouter extends _$AppRouter {}
