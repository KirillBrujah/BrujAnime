import 'package:brujanime/models/models.dart';
import 'package:flutter/material.dart';

class AnimeHorizontalCard extends StatelessWidget {
  const AnimeHorizontalCard({Key? key, required this.anime}) : super(key: key);

  final Anime anime;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(anime.simpleTitle),
        ],
      ),
    );
  }
}
