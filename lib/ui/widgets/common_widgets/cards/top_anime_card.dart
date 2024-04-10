import 'package:auto_route/auto_route.dart';
import 'package:brujanime/ui/theme/constants/constants.dart';
import 'package:brujanime/ui/theme/constants/screen_constants.dart';
import 'package:brujanime/ui/widgets/widgets.dart';
import 'package:brujanime/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:brujanime/models/models.dart';
import 'package:intl/intl.dart';

class TopAnimeCard extends StatelessWidget {
  const TopAnimeCard(this.anime, this.place, {super.key});

  final Anime anime;
  final int place;

  VoidCallback _handleTap(BuildContext context) => () {
        context.router.push(AnimeRoute(anime: anime));
      };

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: ScreenConstants.contentPadding.copyWith(top: 0, bottom: CardConstants.space),
      child: InkWell(
        onTap: _handleTap(context),
        borderRadius: const BorderRadius.all(CardConstants.borderRadius),
        child: SizedBox(
          height: 110,
          child: Row(
            children: [
              Text(
                place.toString(),
                style: textTheme.labelLarge,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Row(
                  children: [
                    _Image(anime.images),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            anime.simpleTitle,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: textTheme.titleSmall,
                          ),
                          const SizedBox(height: 10),
                          _Information(
                            genres: anime.genres,
                            favorites: anime.favorites,
                            score: anime.score,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image(this.images);

  final ImagesWrapper? images;

  @override
  Widget build(BuildContext context) {
    return KNetworkImage(
      imageUrl: images?.maxSizeImage,
      // height: 150,
      width: 80,
      borderRadius: BorderRadius.circular(5),
    );
  }
}

class _Information extends StatelessWidget {
  const _Information({
    required this.genres,
    required this.score,
    required this.favorites,
  });

  final List<Genre> genres;
  final double score;
  final int favorites;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        if (genres.isNotEmpty)
          Text(
            genres.first.name,
            textAlign: TextAlign.center,
            maxLines: 1,
            style: textTheme.labelMedium,
          ),
        const Spacer(),
        const SizedBox(width: 10),
        Icon(
          Icons.star_rounded,
          color: colorScheme.primary,
          size: 14,
        ),
        const SizedBox(width: 4),
        Text(
          '$score',
          textAlign: TextAlign.center,
          maxLines: 1,
          style: textTheme.labelMedium,
        ),
        const SizedBox(width: 10),
        Icon(
          Icons.favorite_rounded,
          color: colorScheme.primary,
          size: 14,
        ),
        const SizedBox(width: 4),
        Text(
          NumberFormat.compact().format(favorites),
          textAlign: TextAlign.center,
          maxLines: 1,
          style: textTheme.labelMedium,
        ),
      ],
    );
  }
}
