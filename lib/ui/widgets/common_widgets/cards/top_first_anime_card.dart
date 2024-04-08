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
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: 200,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Image(anime.images),
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
                _Information(
                  genres: anime.genres,
                  favorites: anime.favorites,
                  score: anime.score,
                ),
                if (anime.synopsis.isNotEmpty) _Synopsis(anime.synopsis),
              ],
            ),
          ),
        ],
      ),
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
        if (genres.isNotEmpty) Text(
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

class _Synopsis extends StatelessWidget {
  const _Synopsis(this.synopsis);

  final String synopsis;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Text(
        synopsis,
        maxLines: 7,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image(this.images);

  final ImagesWrapper? images;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Stack(
      children: [
        KNetworkImage(
          imageUrl: images?.maxSizeImage,
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
    );
  }
}
