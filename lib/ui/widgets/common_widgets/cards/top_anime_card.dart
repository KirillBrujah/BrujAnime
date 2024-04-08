import 'package:flutter/material.dart';
import 'package:brujanime/models/models.dart';

class TopAnimeCard extends StatelessWidget {
  const TopAnimeCard(this.anime, this.place, {super.key});

  final Anime anime;
  final int place;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          Text(
            place.toString(),
            style: textTheme.titleMedium,
          ),
          const SizedBox(width: 10),
          Expanded(child: Placeholder())
        ],
      ),
    );
  }
}