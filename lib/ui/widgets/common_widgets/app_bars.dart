import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

const _detailsAppBarHeight = 40.0;
const _catalogAppBarHeight = 30.0;

class DetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DetailsAppBar({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
      ),
      padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (context.router.canNavigateBack)
            IconButton(
              onPressed: context.router.pop,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(_detailsAppBarHeight);
}

class CatalogAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CatalogAppBar({
    Key? key,
    required this.currentIndex,
    required this.setActiveIndex,
    required this.items,
  }) : super(key: key);

  final int currentIndex;
  final void Function(int index) setActiveIndex;
  final List<CatalogNavigationBarItem> items;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        color: colorScheme.background,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              children: [
                for (int i = 0; i < items.length; i++)
                  Expanded(
                    child: _CatalogNavigationAppBarItem(
                      item: items[i],
                      isSelected: i == currentIndex,
                      onTap: () {
                        setActiveIndex(i);
                      },
                    ),
                  ),
              ],
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            curve: Curves.ease,
            height: 2,
            width: MediaQuery.of(context).size.width / items.length,
            margin: EdgeInsets.only(
              left: currentIndex *
                  MediaQuery.of(context).size.width /
                  items.length,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: colorScheme.primary,
              boxShadow: [
                BoxShadow(
                  color: colorScheme.primary,
                  blurRadius: 2,
                  spreadRadius: 1.5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(_catalogAppBarHeight);
}

class _CatalogNavigationAppBarItem extends StatelessWidget {
  const _CatalogNavigationAppBarItem({
    Key? key,
    required this.item,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  final CatalogNavigationBarItem item;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          const SizedBox(height: 8),
          Icon(
            item.icon,
            color: isSelected
                ? colorScheme.primary
                : colorScheme.onBackground.withOpacity(.8),
          ),
          const SizedBox(height: 4),
          Text(
            item.label,
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: isSelected
                      ? colorScheme.primary
                      : colorScheme.onBackground.withOpacity(.8),
                ),
          ),
        ],
      ),
    );
  }
}

class CatalogNavigationBarItem {
  final String label;
  final IconData icon;

  CatalogNavigationBarItem({required this.label, required this.icon});
}
