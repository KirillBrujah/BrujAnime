import 'package:auto_route/auto_route.dart';
import 'package:brujanime/generated/l10n.dart';
import 'package:brujanime/utils/app_router.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      physics: const NeverScrollableScrollPhysics(),
      routes: const [
        HomeTabRoute(),
        CatalogTabRoute(),
        FavoriteTabRoute(),
        SettingsTabRoute(),
      ],
      builder: (context, child, controller) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: _MainBottomNavigation(
            activeIndex: tabsRouter.activeIndex,
            setActiveIndex: tabsRouter.setActiveIndex,
          ),
        );
      },
    );
  }
}

class _MainBottomNavigation extends StatelessWidget {
  const _MainBottomNavigation({
    super.key,
    required this.activeIndex,
    required this.setActiveIndex,
  });

  final int activeIndex;
  final void Function(int) setActiveIndex;

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return BottomNavigationBar(
      currentIndex: activeIndex,
      onTap: setActiveIndex,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.home),
          label: s.home,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.list),
          label: s.catalog,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.favorite),
          label: s.favorite,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.settings),
          label: s.settings,
        ),
      ],
    );
  }
}
