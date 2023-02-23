import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

const _detailsAppBarHeight = 40.0;

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

class SearchAppBar extends StatelessWidget with PreferredSizeWidget {
  const SearchAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      height: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      decoration: BoxDecoration(
        color: colorScheme.background,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: colorScheme.primary,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: Theme.of(context).colorScheme.primary,
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(_detailsAppBarHeight);
}
