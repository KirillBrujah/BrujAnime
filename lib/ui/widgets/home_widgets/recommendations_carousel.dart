import 'dart:ui';

import 'package:brujanime/models/api_models/models.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
    final colorScheme = Theme.of(context).colorScheme;
    return Stack(
      children: [
        Container(
          height: 3,
          margin: const EdgeInsets.only(top: 280),
          width: double.infinity,
          decoration: BoxDecoration(
            // color: colorScheme.primary.withOpacity(0.9),
            boxShadow: [
              BoxShadow(
                color: colorScheme.primary,
                blurRadius: 2,
                spreadRadius: 1,
                // offset: Offset(0, 10),
              ),
            ],
          ),
        ),
        Container(
          height: 280,
          width: double.infinity,
          decoration: BoxDecoration(
            color: colorScheme.primaryContainer.withOpacity(.1),
          ),
        ),
        ClipRect(
          child: Align(
            alignment: Alignment.topCenter,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 2),
              child: SizedBox(
                height: 280,
                width: double.infinity,
                child: Column(
                  children: [
                    // const SizedBox(height: 20),
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 220,
                        enlargeFactor: 1,
                        viewportFraction: 1,
                        onPageChanged: _onPageChanged,
                      ),
                      items: widget.list
                          .where((anime) => anime.images?.maxSizeImage != null)
                          .map(
                            // (_) => Placeholder(),
                            (anime) => Padding(
                              padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {
                                    // TODO: Navigate to Anime Details
                                  },
                                  borderRadius: BorderRadius.circular(5),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // const SizedBox(width: 15),
                                      SizedBox(
                                        height: 200,
                                        width: 130,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          child: Stack(
                                            fit: StackFit.expand,
                                            children: [
                                              Image(
                                                // height: 200,
                                                fit: BoxFit.fill,
                                                image: NetworkImage(anime
                                                    .images!.maxSizeImage!),
                                              ),
                                              Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Container(
                                                  height: 30,
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    vertical: 5,
                                                    horizontal: 8,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: colorScheme.primary,
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topRight:
                                                          Radius.circular(5),
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: colorScheme
                                                            .background
                                                            .withOpacity(.75),
                                                        blurRadius: 4,
                                                        spreadRadius: 3,
                                                      ),
                                                    ],
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.star_rounded,
                                                        color: colorScheme
                                                            .onPrimary,
                                                        size: 14,
                                                      ),
                                                      const SizedBox(width: 4),
                                                      Text(
                                                        '${anime.score}',
                                                        textAlign:
                                                            TextAlign.center,
                                                        maxLines: 1,
                                                        style: TextStyle(
                                                          color: colorScheme
                                                              .onPrimary,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500,
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
                                            Text(
                                              anime.simpleTitle,
                                              maxLines: 2,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: colorScheme.primary,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            const SizedBox(height: 10),
                                            Text(
                                              anime.synopsis,
                                              maxLines: 8,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                      ),
                                      // const SizedBox(width: 15),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int index = 0; index < widget.list.length; index++)
                          AnimatedContainer(
                            curve: Curves.ease,
                            height: currentIndex == index ? 14 : 10,
                            width: currentIndex == index ? 14 : 10,
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: colorScheme.primary.withOpacity(.9),
                              boxShadow: [
                                BoxShadow(
                                  color: colorScheme.primary,
                                  blurRadius: currentIndex == index ? 2 : 1,
                                  spreadRadius: currentIndex == index ? 2 : 1,
                                )
                              ],
                            ),
                            duration: const Duration(milliseconds: 150),
                          ),
                      ],
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
