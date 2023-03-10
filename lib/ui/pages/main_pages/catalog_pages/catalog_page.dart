import 'package:auto_route/auto_route.dart';
import 'package:brujanime/generated/l10n.dart';
import 'package:brujanime/ui/widgets/widgets.dart';
import 'package:brujanime/utils/app_router.dart';
import 'package:flutter/material.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return AutoTabsRouter.pageView(
      physics: const NeverScrollableScrollPhysics(),
      routes: const [
        ScheduleCatalogRoute(),
        GenresCatalogRoute(),
        TopCatalogRoute(),
      ],
      builder: (context, child, _) {
        final autoTabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          appBar: CatalogAppBar(
            currentIndex: autoTabsRouter.activeIndex,
            setActiveIndex: autoTabsRouter.setActiveIndex,
            items: [
              CatalogNavigationBarItem(
                label: s.daily,
                icon: Icons.calendar_month_rounded,
              ),
              CatalogNavigationBarItem(
                label: s.genres,
                icon: Icons.list_rounded,
              ),
              CatalogNavigationBarItem(
                label: s.top,
                icon: Icons.stacked_bar_chart_rounded,
              ),
            ],
          ),
          body: child,
          /*bottomNavigationBar: BottomNavigationBar(
            onTap: autoTabsRouter.setActiveIndex,
            currentIndex: autoTabsRouter.activeIndex,
            items: [
              BottomNavigationBarItem(
                icon: const Icon(Icons.calendar_month),
                label: s.schedule,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.airplanemode_active),
                label: s.genres,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.star),
                label: s.top,
              ),
            ],
          ),*/
        );
      },
    );
  }
}
