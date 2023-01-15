import 'package:auto_route/auto_route.dart';
import 'package:brujanime/utils/app_router.dart';
import 'package:flutter/material.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      routes: [
        ScheduleCatalogRoute(),
        GenresCatalogRoute(),
        TopCatalogRoute(),
      ],
      builder: (context, child, _) {
        final autoTabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          appBar: AppBar(
            title: Text(context.routeData.name),
            leading: AutoLeadingButton(),
          ),
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            onTap: autoTabsRouter.setActiveIndex,
            currentIndex: autoTabsRouter.activeIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month),
                label: "Schedule",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.airplanemode_active),
                label: "Genres",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star),
                label: "Top",
              ),
            ],
          ),
        );
      },
    );
  }
}
