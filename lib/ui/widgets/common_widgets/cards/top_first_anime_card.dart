import 'package:brujanime/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:brujanime/models/models.dart';
import 'package:intl/intl.dart';


class TopFirstAnimeCard extends StatelessWidget {
  const TopFirstAnimeCard(
      this.anime, {
        super.key,
      });

  final Anime anime;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: 200,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              KNetworkImage(
                imageUrl: anime.images?.maxSizeImage,
                height: 200,
                width: 130,
                borderRadius: BorderRadius.circular(5),
              ),
              Container(
                margin: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: colorScheme.background.withOpacity(.5),
                      blurRadius: 7,
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Icon(
                      Icons.star_rounded,
                      color: colorScheme.primary,
                      size: 60,
                    ),
                    Text(
                      '1',
                      style: textTheme.titleLarge?.copyWith(
                        color: colorScheme.onPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  anime.simpleTitle,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: textTheme.titleMedium,
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    if (anime.genres.isNotEmpty) KChip(anime.genres.first.name),
                    const SizedBox(width: 4),
                    Icon(
                      Icons.star_rounded,
                      color: colorScheme.primary,
                      size: 14,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '${anime.score}',
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      style: textTheme.labelMedium,
                    ),
                    const SizedBox(width: 20),
                    Icon(
                      Icons.favorite_rounded,
                      color: colorScheme.primary,
                      size: 14,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      NumberFormat.compact().format(anime.favorites),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      style: textTheme.labelMedium,
                    ),
                  ],
                ),
                if (anime.synopsis.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      anime.synopsis,
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                      style: textTheme.bodyMedium,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
