import 'package:auto_route/auto_route.dart';
import 'package:brujanime/generated/l10n.dart';
import 'package:brujanime/utils/app_router.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: [
        HomeTabRoute(),
        CatalogTabRoute(),
        FavoriteTabRoute(),
        SettingsTabRoute(),
      ],
      builder: (context, child, controller) {
        final tabsRouter = AutoTabsRouter.of(context);
        final localize = S.of(context);
        return Scaffold(
          appBar: AppBar(title: Text(context.topRoute.name)),
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              BottomNavigationBarItem(
                icon: const Icon(Icons.home),
                label: localize.home,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.list),
                label: localize.catalog,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.favorite),
                label: localize.favorite,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.settings),
                label: localize.settings,
              ),
            ],
          ),
        );
      },
    );
  }
}
