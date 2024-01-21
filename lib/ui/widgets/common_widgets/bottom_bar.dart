import 'package:auto_route/auto_route.dart';
import 'package:brujanime/generated/l10n.dart';
import 'package:brujanime/utils/app_router.dart';
import 'package:flutter/material.dart';

const _bottomAppBarHeight = 52.0;
const _padding = 4.0;

class MainBottomNavigation extends StatelessWidget {
  const MainBottomNavigation({
    super.key,
    required this.activeIndex,
    required this.setActiveIndex,
  });

  final int activeIndex;
  final void Function(int) setActiveIndex;

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colorScheme = Theme.of(context).colorScheme;

    return BottomAppBar(
      height: _bottomAppBarHeight,
      child: Container(
        decoration: BoxDecoration(
          color: colorScheme.background,
          border: Border(
            top: BorderSide(
              color: colorScheme.primary,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _BottomNavItem(
              icon: Icons.home_rounded,
              title: s.home,
              onTap: () => setActiveIndex(0),
              isSelected: activeIndex == 0,
            ),
            _BottomNavItem(
              icon: Icons.list_alt_rounded,
              title: s.catalog,
              onTap: () => setActiveIndex(1),
              isSelected: activeIndex == 1,
            ),
            const _BottomSearchButton(),
            _BottomNavItem(
              icon: Icons.favorite_rounded,
              title: s.favorite,
              onTap: () => setActiveIndex(2),
              isSelected: activeIndex == 2,
            ),
            _BottomNavItem(
              icon: Icons.settings_rounded,
              title: s.settings,
              onTap: () => setActiveIndex(3),
              isSelected: activeIndex == 3,
            ),
          ],
        ),
      ),
    );
  }
}

class _BottomSearchButton extends StatelessWidget {
  const _BottomSearchButton();

  VoidCallback _handleTap(BuildContext context) => () {
        context.router.navigate(const SearchRoute());
      };

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(_bottomAppBarHeight),
      child: InkWell(
        borderRadius: BorderRadius.circular(_bottomAppBarHeight),
        onTap: _handleTap(context),
        child: Container(
          width: _bottomAppBarHeight - _padding * 2,
          margin: const EdgeInsets.symmetric(vertical: _padding),
          decoration: BoxDecoration(
            border: Border.all(color: colorScheme.primary),
            borderRadius: BorderRadius.circular(_bottomAppBarHeight),
          ),
          child: Icon(
            Icons.search_rounded,
            color: colorScheme.primary,
          ),
        ),
      ),
    );
  }
}

class _BottomNavItem extends StatelessWidget {
  const _BottomNavItem({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
    required this.isSelected,
  }) : super(key: key);

  final bool isSelected;
  final String title;
  final IconData icon;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkResponse(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: _padding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  icon,
                  color: isSelected
                      ? colorScheme.primary
                      : colorScheme.onBackground.withOpacity(.8),
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: isSelected
                            ? colorScheme.primary
                            : colorScheme.onBackground.withOpacity(.8),
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
