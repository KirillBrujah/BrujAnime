import 'package:brujanime/models/models.dart';
import 'package:flutter/material.dart';

import 'anime_cards.dart';

class HorizontalAnimeList extends StatelessWidget {
  const HorizontalAnimeList({
    Key? key,
    required this.list,
    this.title,
    this.onNavigateTap,
  }) : super(key: key);

  final String? title;
  final VoidCallback? onNavigateTap;
  final List<Anime> list;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    title!,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                if (onNavigateTap != null) ...[
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: onNavigateTap,
                    borderRadius: BorderRadius.circular(5),
                    child: SizedBox(
                      height: 34,
                      width: 34,
                      child: Icon(
                        Icons.navigate_next_rounded,
                        color: Theme.of(context).colorScheme.primary,
                        size: 34,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (Anime anime in list)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: HorizontalAnimeCard(
                    anime: anime,
                  ),
                ),
              //
            ],
          ),
        )
      ],
    );
  }
}
