import 'package:flutter/material.dart';

const _catalogAppBarHeight = 40.0;
const _catalogSubAppBarHeight = 40.0;

class CatalogNavigationBarItem {
  final String label;
  final IconData? icon;

  CatalogNavigationBarItem({required this.label, this.icon});
}

class CatalogAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CatalogAppBar({
    super.key,
    required this.currentIndex,
    required this.setActiveIndex,
    required this.items,
  });

  final int currentIndex;
  final void Function(int index) setActiveIndex;
  final List<CatalogNavigationBarItem> items;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      // height: double.infinity,
      height: _catalogAppBarHeight,
      decoration: BoxDecoration(
        color: colorScheme.background,
        border: Border(
          bottom: BorderSide(
            color: colorScheme.primary,
          ),
        ),
      ),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(_catalogAppBarHeight);
}

class _CatalogNavigationAppBarItem extends StatelessWidget {
  const _CatalogNavigationAppBarItem({
    required this.item,
    required this.isSelected,
    required this.onTap,
  });

  final CatalogNavigationBarItem item;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                item.icon,
                size: _catalogAppBarHeight / 2,
                color: isSelected
                    ? colorScheme.primary
                    : colorScheme.onBackground.withOpacity(.8),
              ),
              const SizedBox(width: 6),
              Text(
                item.label,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: isSelected
                          ? colorScheme.primary
                          : colorScheme.onBackground.withOpacity(.8),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CatalogSubAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CatalogSubAppBar(
      {super.key,
      required this.currentIndex,
      required this.setActiveIndex,
      required this.items});

  final int currentIndex;
  final void Function(int index) setActiveIndex;
  final List<CatalogNavigationBarItem> items;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      height: _catalogSubAppBarHeight,
      decoration: BoxDecoration(
        color: colorScheme.background,
        border: Border(
          bottom: BorderSide(
            color: colorScheme.primary,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              children: [
                for (int i = 0; i < items.length; i++)
                  Expanded(
                    child: _CatalogNavigationSubAppBarItem(
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
                  blurRadius: 1,
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
  Size get preferredSize => const Size.fromHeight(_catalogSubAppBarHeight);
}

class _CatalogNavigationSubAppBarItem extends StatelessWidget {
  const _CatalogNavigationSubAppBarItem({
    required this.item,
    required this.isSelected,
    required this.onTap,
  });

  final CatalogNavigationBarItem item;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Center(
          child: Text(
            item.label,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: isSelected
                      ? colorScheme.primary
                      : colorScheme.onBackground.withOpacity(.8),
                ),
          ),
        ),
      ),
    );
  }
}
