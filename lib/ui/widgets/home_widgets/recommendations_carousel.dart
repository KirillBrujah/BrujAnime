import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:brujanime/models/api_models/models.dart';
import 'package:brujanime/utils/app_router.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

const _containerHeight = 270.0;

class RecommendationsCarousel extends StatefulWidget {
  const RecommendationsCarousel({Key? key, required this.list})
      : super(key: key);

  final List<Anime> list;

  @override
  State<RecommendationsCarousel> createState() =>
      _RecommendationsCarouselState();
}

class _RecommendationsCarouselState extends State<RecommendationsCarousel> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _NeonDivider(),
        _BackgroundColor(),
        ClipRect(
          child: Align(
            alignment: Alignment.topCenter,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 0, sigmaY: 8),
              child: SizedBox(
                height: _containerHeight,
                width: double.infinity,
                child: Column(
                  children: [
                    // const SizedBox(height: 20),
                    _Carousel(list: widget.list, onPageChanged: _onPageChanged),
                    const SizedBox(height: 20),
                    _PageIndicator(
                      currentIndex: currentIndex,
                      count: widget.list.length,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  _onPageChanged(int index, _) => setState(() {
        currentIndex = index;
      });
}

class _BackgroundColor extends StatelessWidget {
  const _BackgroundColor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      height: _containerHeight,
      width: double.infinity,
      decoration: BoxDecoration(
        color: colorScheme.primaryContainer.withOpacity(.05),
      ),
    );
  }
}

class _NeonDivider extends StatelessWidget {
  const _NeonDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      height: 2,
      margin: const EdgeInsets.only(top: _containerHeight),
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: colorScheme.primary,
            blurRadius: 2,
            spreadRadius: 1,
            offset: const Offset(0, 2),
          ),
        ],
      ),
    );
  }
}

class _Carousel extends StatelessWidget {
  const _Carousel({Key? key, required this.list, required this.onPageChanged})
      : super(key: key);

  final List<Anime> list;
  final void Function(int, CarouselPageChangedReason) onPageChanged;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return CarouselSlider(
      options: CarouselOptions(
        height: 220,
        enlargeFactor: 1,
        viewportFraction: 1,
        onPageChanged: onPageChanged,
      ),
      items: list
          .where((anime) => anime.images?.maxSizeImage != null)
          .map(
            // (_) => Placeholder(),
            (anime) => Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    context.router.push(AnimeRoute(anime: anime));
                  },
                  borderRadius: BorderRadius.circular(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 200,
                        width: 130,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Image(
                                fit: BoxFit.fill,
                                image:
                                    NetworkImage(anime.images!.maxSizeImage!),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  height: 30,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    color: colorScheme.primary,
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(5),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: colorScheme.background
                                            .withOpacity(.75),
                                        blurRadius: 4,
                                        spreadRadius: 3,
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star_rounded,
                                        color: colorScheme.onPrimary,
                                        size: 14,
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        '${anime.score}',
                                        textAlign: TextAlign.center,
                                        maxLines: 1,
                                        style: TextStyle(
                                          color: colorScheme.onPrimary,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          children: [
                            const SizedBox(height: 10),
                            Text(
                              anime.simpleTitle,
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: textTheme.titleMedium,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              anime.synopsis,
                              maxLines: 8,
                              overflow: TextOverflow.ellipsis,
                              style: textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}

class _PageIndicator extends StatelessWidget {
  const _PageIndicator(
      {Key? key, required this.currentIndex, required this.count})
      : super(key: key);

  final int currentIndex;
  final int count;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return SizedBox(
      height: 14,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int index = 0; index < count; index++)
            AnimatedContainer(
              curve: Curves.ease,
              height: currentIndex == index ? 10 : 6,
              width: currentIndex == index ? 10 : 6,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: colorScheme.primary.withOpacity(.9),
                boxShadow: [
                  BoxShadow(
                    color: colorScheme.primary,
                    blurRadius: currentIndex == index ? 2 : 1.5,
                    spreadRadius: currentIndex == index ? 2 : 1.5,
                  )
                ],
              ),
              duration: const Duration(milliseconds: 200),
            ),
        ],
      ),
    );
  }
}
