import 'package:auto_route/auto_route.dart';
import 'package:brujanime/ui/theme/constants/constants.dart';
import 'package:brujanime/ui/widgets/widgets.dart';
import 'package:brujanime/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:brujanime/models/models.dart';
import 'package:intl/intl.dart';

class HorizontalAnimeCard extends StatelessWidget {
  const HorizontalAnimeCard({super.key, required this.anime});

  final Anime anime;

  VoidCallback _handleTap(BuildContext context) => () {
    context.router.push(AnimeRoute(anime: anime));
  };

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: colorScheme.primary.withOpacity(0.6),
        ),
        borderRadius: const BorderRadius.all(CardConstants.borderRadius),
      ),
      width: CardConstants.horizontalCardSize.width,
      height: CardConstants.horizontalCardSize.height,
      child: InkWell(
        onTap: _handleTap(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            KNetworkImage(
              height: 180,
              borderRadius: const BorderRadius.vertical(
                top: CardConstants.borderRadius,
              ),
              imageUrl: anime.images?.maxSizeImage,
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    anime.type.label,
                    style: textTheme.bodySmall,
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    height: 40,
                    child: Text(
                      anime.simpleTitle,
                      // textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: textTheme.titleSmall
                          ?.copyWith(color: colorScheme.onBackground),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: Icon(
                          Icons.star_rate_rounded,
                          color: colorScheme.primary,
                          size: 14,
                        ),
                      ),
                      Text(
                        '${anime.score}',
                        style: textTheme.labelSmall,
                      ),
                      const SizedBox(width: 2),
                      const Spacer(),
                      const SizedBox(width: 2),
                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: Icon(
                          Icons.favorite_rounded,
                          color: colorScheme.primary,
                          size: 14,
                        ),
                      ),
                      Text(
                        NumberFormat.compact().format(anime.favorites),
                        style: textTheme.labelSmall,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
