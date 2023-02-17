import 'dart:ui';

import 'package:brujanime/models/api_models/models.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class RecommendationsCarousel extends StatelessWidget {
  const RecommendationsCarousel({Key? key, required this.list})
      : super(key: key);

  final List<Anime> list;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return CarouselSlider(
      options: CarouselOptions(
        height: 300,
        enlargeFactor: 1,
        viewportFraction: 1,
      ),
      items: list
          .where((anime) => anime.images?.maxSizeImage != null)
          .map(
            // (_) => Placeholder(),
            (anime) => Stack(
              // alignment: Alignment.center,
              fit: StackFit.expand,
              children: [
                ImageFiltered(
                  imageFilter: ImageFilter.blur(
                    sigmaX: 0,
                    sigmaY: 0,
                  ),
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(anime.images!.maxSizeImage!),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        colorScheme.background,
                        const Color(0x00000000),
                        // const Color(0x00000000),
                        colorScheme.background,
                      ],
                      stops: [.05, .5, .95],
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image(
                    fit: BoxFit.fitHeight,
                    image: NetworkImage(anime.images!.maxSizeImage!),
                  ),
                ),
              ],
            ),
          )
          .toList(),
    );
  }
}
