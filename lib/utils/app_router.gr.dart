// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    MainRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MainPage(),
      );
    },
    HomeTabRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    CatalogTabRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    FavoriteTabRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    SettingsTabRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    AnimeRoute.name: (routeData) {
      final args = routeData.argsAs<AnimeRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: AnimePage(
          key: args.key,
          anime: args.anime,
        ),
      );
    },
    SearchRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SearchPage(),
      );
    },
    CatalogRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CatalogPage(),
      );
    },
    ScheduleCatalogRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ScheduleCatalogPage(),
      );
    },
    GenresCatalogRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const GenresCatalogPage(),
      );
    },
    TopCatalogRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const TopCatalogPage(),
      );
    },
    TopAllRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const TopAllPage(),
      );
    },
    TopAiringRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const TopAiringPage(),
      );
    },
    TopUpcomingRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const TopUpcomingPage(),
      );
    },
    FavoriteRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const FavoritePage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        RouteConfig(
          MainRoute.name,
          path: '/main-page',
          children: [
            RouteConfig(
              HomeTabRoute.name,
              path: '',
              parent: MainRoute.name,
              children: [
                RouteConfig(
                  HomeRoute.name,
                  path: '',
                  parent: HomeTabRoute.name,
                ),
                RouteConfig(
                  AnimeRoute.name,
                  path: 'anime-page',
                  parent: HomeTabRoute.name,
                ),
                RouteConfig(
                  SearchRoute.name,
                  path: 'search-page',
                  parent: HomeTabRoute.name,
                ),
              ],
            ),
            RouteConfig(
              CatalogTabRoute.name,
              path: 'empty-router-page',
              parent: MainRoute.name,
              children: [
                RouteConfig(
                  CatalogRoute.name,
                  path: '',
                  parent: CatalogTabRoute.name,
                  children: [
                    RouteConfig(
                      ScheduleCatalogRoute.name,
                      path: 'schedule-catalog-page',
                      parent: CatalogRoute.name,
                    ),
                    RouteConfig(
                      GenresCatalogRoute.name,
                      path: 'genres-catalog-page',
                      parent: CatalogRoute.name,
                    ),
                    RouteConfig(
                      TopCatalogRoute.name,
                      path: 'top-catalog-page',
                      parent: CatalogRoute.name,
                      children: [
                        RouteConfig(
                          TopAllRoute.name,
                          path: '',
                          parent: TopCatalogRoute.name,
                        ),
                        RouteConfig(
                          TopAiringRoute.name,
                          path: 'top-airing-page',
                          parent: TopCatalogRoute.name,
                        ),
                        RouteConfig(
                          TopUpcomingRoute.name,
                          path: 'top-upcoming-page',
                          parent: TopCatalogRoute.name,
                        ),
                      ],
                    ),
                  ],
                ),
                RouteConfig(
                  AnimeRoute.name,
                  path: 'anime-page',
                  parent: CatalogTabRoute.name,
                ),
                RouteConfig(
                  SearchRoute.name,
                  path: 'search-page',
                  parent: CatalogTabRoute.name,
                ),
              ],
            ),
            RouteConfig(
              FavoriteTabRoute.name,
              path: 'empty-router-page',
              parent: MainRoute.name,
              children: [
                RouteConfig(
                  FavoriteRoute.name,
                  path: '',
                  parent: FavoriteTabRoute.name,
                ),
                RouteConfig(
                  AnimeRoute.name,
                  path: 'anime-page',
                  parent: FavoriteTabRoute.name,
                ),
                RouteConfig(
                  SearchRoute.name,
                  path: 'search-page',
                  parent: FavoriteTabRoute.name,
                ),
              ],
            ),
            RouteConfig(
              SettingsTabRoute.name,
              path: 'empty-router-page',
              parent: MainRoute.name,
              children: [
                RouteConfig(
                  SettingsRoute.name,
                  path: '',
                  parent: SettingsTabRoute.name,
                ),
                RouteConfig(
                  SearchRoute.name,
                  path: 'search-page',
                  parent: SettingsTabRoute.name,
                ),
              ],
            ),
          ],
        ),
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: '/main-page',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [EmptyRouterPage]
class HomeTabRoute extends PageRouteInfo<void> {
  const HomeTabRoute({List<PageRouteInfo>? children})
      : super(
          HomeTabRoute.name,
          path: '',
          initialChildren: children,
        );

  static const String name = 'HomeTabRoute';
}

/// generated route for
/// [EmptyRouterPage]
class CatalogTabRoute extends PageRouteInfo<void> {
  const CatalogTabRoute({List<PageRouteInfo>? children})
      : super(
          CatalogTabRoute.name,
          path: 'empty-router-page',
          initialChildren: children,
        );

  static const String name = 'CatalogTabRoute';
}

/// generated route for
/// [EmptyRouterPage]
class FavoriteTabRoute extends PageRouteInfo<void> {
  const FavoriteTabRoute({List<PageRouteInfo>? children})
      : super(
          FavoriteTabRoute.name,
          path: 'empty-router-page',
          initialChildren: children,
        );

  static const String name = 'FavoriteTabRoute';
}

/// generated route for
/// [EmptyRouterPage]
class SettingsTabRoute extends PageRouteInfo<void> {
  const SettingsTabRoute({List<PageRouteInfo>? children})
      : super(
          SettingsTabRoute.name,
          path: 'empty-router-page',
          initialChildren: children,
        );

  static const String name = 'SettingsTabRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [AnimePage]
class AnimeRoute extends PageRouteInfo<AnimeRouteArgs> {
  AnimeRoute({
    Key? key,
    required Anime anime,
  }) : super(
          AnimeRoute.name,
          path: 'anime-page',
          args: AnimeRouteArgs(
            key: key,
            anime: anime,
          ),
        );

  static const String name = 'AnimeRoute';
}

class AnimeRouteArgs {
  const AnimeRouteArgs({
    this.key,
    required this.anime,
  });

  final Key? key;

  final Anime anime;

  @override
  String toString() {
    return 'AnimeRouteArgs{key: $key, anime: $anime}';
  }
}

/// generated route for
/// [SearchPage]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute()
      : super(
          SearchRoute.name,
          path: 'search-page',
        );

  static const String name = 'SearchRoute';
}

/// generated route for
/// [CatalogPage]
class CatalogRoute extends PageRouteInfo<void> {
  const CatalogRoute({List<PageRouteInfo>? children})
      : super(
          CatalogRoute.name,
          path: '',
          initialChildren: children,
        );

  static const String name = 'CatalogRoute';
}

/// generated route for
/// [ScheduleCatalogPage]
class ScheduleCatalogRoute extends PageRouteInfo<void> {
  const ScheduleCatalogRoute()
      : super(
          ScheduleCatalogRoute.name,
          path: 'schedule-catalog-page',
        );

  static const String name = 'ScheduleCatalogRoute';
}

/// generated route for
/// [GenresCatalogPage]
class GenresCatalogRoute extends PageRouteInfo<void> {
  const GenresCatalogRoute()
      : super(
          GenresCatalogRoute.name,
          path: 'genres-catalog-page',
        );

  static const String name = 'GenresCatalogRoute';
}

/// generated route for
/// [TopCatalogPage]
class TopCatalogRoute extends PageRouteInfo<void> {
  const TopCatalogRoute({List<PageRouteInfo>? children})
      : super(
          TopCatalogRoute.name,
          path: 'top-catalog-page',
          initialChildren: children,
        );

  static const String name = 'TopCatalogRoute';
}

/// generated route for
/// [TopAllPage]
class TopAllRoute extends PageRouteInfo<void> {
  const TopAllRoute()
      : super(
          TopAllRoute.name,
          path: '',
        );

  static const String name = 'TopAllRoute';
}

/// generated route for
/// [TopAiringPage]
class TopAiringRoute extends PageRouteInfo<void> {
  const TopAiringRoute()
      : super(
          TopAiringRoute.name,
          path: 'top-airing-page',
        );

  static const String name = 'TopAiringRoute';
}

/// generated route for
/// [TopUpcomingPage]
class TopUpcomingRoute extends PageRouteInfo<void> {
  const TopUpcomingRoute()
      : super(
          TopUpcomingRoute.name,
          path: 'top-upcoming-page',
        );

  static const String name = 'TopUpcomingRoute';
}

/// generated route for
/// [FavoritePage]
class FavoriteRoute extends PageRouteInfo<void> {
  const FavoriteRoute()
      : super(
          FavoriteRoute.name,
          path: '',
        );

  static const String name = 'FavoriteRoute';
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: '',
        );

  static const String name = 'SettingsRoute';
}
