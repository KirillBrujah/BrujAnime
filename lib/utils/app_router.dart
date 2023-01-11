import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:brujanime/ui/pages/main_pages/pages.dart';
import 'package:brujanime/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

const _homeTab = AutoRoute(
  name: "HomeTabRoute",
  initial: true,
  page: EmptyRouterPage,
  children: [
    //
  ],
);

const _catalogTab = AutoRoute(
  name: "CatalogTabRoute",
  page: EmptyRouterPage,
  children: [
    AutoRoute(
      page: CatalogPage,
      initial: true,
    ),
  ],
);

const _favoriteTab = AutoRoute(
  name: "FavoriteTabRoute",
  page: EmptyRouterPage,
  children: [
    //
  ],
);

const _settingsTab = AutoRoute(
  name: "SettingsTabRoute",
  page: EmptyRouterPage,
  children: [
    //
  ],
);

const _mainRoute = AutoRoute(
  page: MainPage,
  children: [
    _homeTab,
    _catalogTab,
    _favoriteTab,
    _settingsTab,
  ],
);

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    _mainRoute,
  ],
)
class AppRouter extends _$AppRouter {}
