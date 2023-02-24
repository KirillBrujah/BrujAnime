import 'package:auto_route/auto_route.dart';
import 'package:brujanime/ui/widgets/common_widgets/widgets.dart';
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
          bottomNavigationBar: MainBottomNavigation(
            activeIndex: tabsRouter.activeIndex,
            setActiveIndex: tabsRouter.setActiveIndex,
          ),
        );
      },
    );
  }
}
