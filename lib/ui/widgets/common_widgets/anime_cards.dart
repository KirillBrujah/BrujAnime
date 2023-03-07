import 'package:auto_route/auto_route.dart';
import 'package:brujanime/models/models.dart';
import 'package:brujanime/ui/theme/constants.dart';
import 'package:brujanime/ui/widgets/common_widgets/widgets.dart';
import 'package:brujanime/utils/app_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HorizontalAnimeCard extends StatelessWidget {
  const HorizontalAnimeCard({Key? key, required this.anime}) : super(key: key);

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
        borderRadius: BorderRadius.circular(5),
      ),
      width: SizeConstants.horizontalCardSize.width,
      height: SizeConstants.horizontalCardSize.height,
      child: InkWell(
        onTap: _handleTap(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              width: double.infinity,
              height: 180,
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(5),
                ),
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: anime.images?.maxSizeImage ?? "",
                  placeholder: (_, __) => const ImageShimmer(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    anime.type.label,
                    style: textTheme.bodySmall?.copyWith(
                      color: colorScheme.onBackground.withOpacity(0.75),
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    height: 50,
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
                      Icon(
                        Icons.star_rate_rounded,
                        color: colorScheme.primary,
                        size: 14,
                      ),
                      Text(
                        '${anime.score}',
                        style: textTheme.labelSmall,
                      ),
                      const SizedBox(width: 2),
                      const Spacer(),
                      const SizedBox(width: 2),
                      Icon(
                        Icons.favorite_rounded,
                        color: colorScheme.primary,
                        size: 14,
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
