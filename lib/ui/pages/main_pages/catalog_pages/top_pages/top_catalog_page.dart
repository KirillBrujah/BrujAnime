import 'package:auto_route/auto_route.dart';
import 'package:brujanime/generated/l10n.dart';
import 'package:brujanime/ui/widgets/common_widgets/app_bars/widgets.dart';
import 'package:brujanime/utils/app_router.dart';
import 'package:flutter/material.dart';

class TopCatalogPage extends StatelessWidget {
  const TopCatalogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return AutoTabsRouter.pageView(
      routes: const [
        TopAllRoute(),
        TopAiringRoute(),
        TopUpcomingRoute(),
      ],
      builder: (context, child, pageController) {
        final autoTabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          appBar: CatalogSubAppBar(
            currentIndex: autoTabsRouter.activeIndex,
            setActiveIndex: autoTabsRouter.setActiveIndex,
            items: [
              CatalogNavigationBarItem(label: s.all),
              CatalogNavigationBarItem(label: s.airing),
              CatalogNavigationBarItem(label: s.upcoming),
            ],
          ),
          body: child,
        );
      },
    );
  }
}
