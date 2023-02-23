import 'package:brujanime/models/models.dart';
import 'package:brujanime/ui/widgets/common_widgets/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AnimeHorizontalCard extends StatelessWidget {
  const AnimeHorizontalCard({Key? key, required this.anime}) : super(key: key);

  final Anime anime;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        // color: colorScheme.primaryContainer,
        border: Border.all(
          color: colorScheme.primary.withOpacity(0.8),
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      width: 140,
      // padding: EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 200,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(5),
              ),
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl: anime.images?.maxSizeImage ?? "",
                placeholder: (_, __) => const ImageShimmerPlaceholder(),
              ),
            ),
          ),
          Container(
            height: 60,
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                anime.simpleTitle,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.star_rate_rounded,
                color: colorScheme.primary,
                size: 10,
              ),
              Text('${anime.score}'),
            ],
          )
        ],
      ),
    );
  }
}
