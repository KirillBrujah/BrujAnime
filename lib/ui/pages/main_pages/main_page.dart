import 'package:auto_route/auto_route.dart';
import 'package:brujanime/generated/l10n.dart';
import 'package:brujanime/utils/app_router.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
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
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: MediaQuery.of(context).padding.top,
                color: Theme.of(context).colorScheme.surface,
              ),
              Expanded(child: child),
            ],
          ),
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
    required this.activeIndex,
    required this.setActiveIndex,
  });

  final int activeIndex;
  final void Function(int) setActiveIndex;

  void _handleTap(index) {
    if (index == 2) {
      // TODO: Go to search
      print("GO TO SEARCH");
      return;
    }

    setActiveIndex(index < 2 ? index : index - 1);
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return ConvexAppBar(
      onTap: _handleTap,
      style: TabStyle.fixed,
      items: [
        TabItem(
          icon: Icons.home,
          title: s.home,
        ),
        TabItem(icon: Icons.list, title: s.catalog),
        TabItem(icon: Icons.search),
        TabItem(icon: Icons.favorite, title: s.favorite),
        TabItem(icon: Icons.settings, title: s.settings),
      ],
    );

    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      height: 50,
      surfaceTintColor: Colors.red,
      elevation: 50,
      notchMargin: 15,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: InkWell(
              child: const Icon(Icons.home),
              onTap: () {
                setActiveIndex(0);
              },
            ),
          ),
          Expanded(
            child: InkWell(
              child: const Icon(Icons.home),
              onTap: () {
                setActiveIndex(0);
              },
            ),
          ),
          Expanded(
            child: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                setActiveIndex(0);
              },
            ),
          ),
          Expanded(
            child: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                setActiveIndex(0);
              },
            ),
          ),
        ],
      ),
    );
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
