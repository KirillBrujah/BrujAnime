import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

const _detailsAppBarHeight = 40.0;

class DetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DetailsAppBar({super.key, required this.title});

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
