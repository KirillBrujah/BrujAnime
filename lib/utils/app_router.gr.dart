// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AnimeRoute.name: (routeData) {
      final args = routeData.argsAs<AnimeRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AnimePage(
          key: args.key,
          anime: args.anime,
        ),
      );
    },
    CatalogRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CatalogPage(),
      );
    },
    CatalogTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CatalogTabPage(),
      );
    },
    FavoriteRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavoritePage(),
      );
    },
    FavoriteTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavoriteTabPage(),
      );
    },
    GenresCatalogRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GenresCatalogPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    HomeTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeTabPage(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainPage(),
      );
    },
    ScheduleCatalogRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ScheduleCatalogPage(),
      );
    },
    SearchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SearchPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
    SettingsTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsTabPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    TopAiringRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TopAiringPage(),
      );
    },
    TopAllRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TopAllPage(),
      );
    },
    TopCatalogRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TopCatalogPage(),
      );
    },
    TopUpcomingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TopUpcomingPage(),
      );
    },
  };
}

/// generated route for
/// [AnimePage]
class AnimeRoute extends PageRouteInfo<AnimeRouteArgs> {
  AnimeRoute({
    Key? key,
    required Anime anime,
    List<PageRouteInfo>? children,
  }) : super(
          AnimeRoute.name,
          args: AnimeRouteArgs(
            key: key,
            anime: anime,
          ),
          initialChildren: children,
        );

  static const String name = 'AnimeRoute';

  static const PageInfo<AnimeRouteArgs> page = PageInfo<AnimeRouteArgs>(name);
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
/// [CatalogPage]
class CatalogRoute extends PageRouteInfo<void> {
  const CatalogRoute({List<PageRouteInfo>? children})
      : super(
          CatalogRoute.name,
          initialChildren: children,
        );

  static const String name = 'CatalogRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CatalogTabPage]
class CatalogTab extends PageRouteInfo<void> {
  const CatalogTab({List<PageRouteInfo>? children})
      : super(
          CatalogTab.name,
          initialChildren: children,
        );

  static const String name = 'CatalogTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FavoritePage]
class FavoriteRoute extends PageRouteInfo<void> {
  const FavoriteRoute({List<PageRouteInfo>? children})
      : super(
          FavoriteRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FavoriteTabPage]
class FavoriteTab extends PageRouteInfo<void> {
  const FavoriteTab({List<PageRouteInfo>? children})
      : super(
          FavoriteTab.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [GenresCatalogPage]
class GenresCatalogRoute extends PageRouteInfo<void> {
  const GenresCatalogRoute({List<PageRouteInfo>? children})
      : super(
          GenresCatalogRoute.name,
          initialChildren: children,
        );

  static const String name = 'GenresCatalogRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeTabPage]
class HomeTab extends PageRouteInfo<void> {
  const HomeTab({List<PageRouteInfo>? children})
      : super(
          HomeTab.name,
          initialChildren: children,
        );

  static const String name = 'HomeTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ScheduleCatalogPage]
class ScheduleCatalogRoute extends PageRouteInfo<void> {
  const ScheduleCatalogRoute({List<PageRouteInfo>? children})
      : super(
          ScheduleCatalogRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScheduleCatalogRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SearchPage]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsTabPage]
class SettingsTab extends PageRouteInfo<void> {
  const SettingsTab({List<PageRouteInfo>? children})
      : super(
          SettingsTab.name,
          initialChildren: children,
        );

  static const String name = 'SettingsTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TopAiringPage]
class TopAiringRoute extends PageRouteInfo<void> {
  const TopAiringRoute({List<PageRouteInfo>? children})
      : super(
          TopAiringRoute.name,
          initialChildren: children,
        );

  static const String name = 'TopAiringRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TopAllPage]
class TopAllRoute extends PageRouteInfo<void> {
  const TopAllRoute({List<PageRouteInfo>? children})
      : super(
          TopAllRoute.name,
          initialChildren: children,
        );

  static const String name = 'TopAllRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TopCatalogPage]
class TopCatalogRoute extends PageRouteInfo<void> {
  const TopCatalogRoute({List<PageRouteInfo>? children})
      : super(
          TopCatalogRoute.name,
          initialChildren: children,
        );

  static const String name = 'TopCatalogRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TopUpcomingPage]
class TopUpcomingRoute extends PageRouteInfo<void> {
  const TopUpcomingRoute({List<PageRouteInfo>? children})
      : super(
          TopUpcomingRoute.name,
          initialChildren: children,
        );

  static const String name = 'TopUpcomingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
