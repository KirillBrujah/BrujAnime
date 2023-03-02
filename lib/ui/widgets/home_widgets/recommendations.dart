import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:brujanime/models/models.dart';
import 'package:brujanime/ui/widgets/common_widgets/widgets.dart';
import 'package:brujanime/utils/app_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const _containerHeight = 270.0;

class RecommendationsCarousel extends StatelessWidget {
  const RecommendationsCarousel({Key? key, required this.list})
      : super(key: key);

  final List<Anime> list;

  @override
  Widget build(BuildContext context) {
    return _RecommendationsContainer(child: _Recommendations(list: list));
  }
}

class RecommendationsLoading extends StatelessWidget {
  const RecommendationsLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _RecommendationsContainer(
        child: _ContentPlaceholder(isShimmering: true));
  }
}

class RecommendationsError extends StatelessWidget {
  const RecommendationsError(this.error, {Key? key}) : super(key: key);

  final String error;

  @override
  Widget build(BuildContext context) {
    return _RecommendationsContainer(
      child: Stack(
        fit: StackFit.expand,
        children: [
          const _ContentPlaceholder(isShimmering: false),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Text(
                error,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _RecommendationsContainer extends StatelessWidget {
  const _RecommendationsContainer({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const _NeonDivider(),
        const _BackgroundColor(),
        _ContentContainer(child: child)
      ],
    );
  }
}

class _ContentContainer extends StatelessWidget {
  const _ContentContainer({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Align(
        alignment: Alignment.topCenter,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 0, sigmaY: 8),
          child: SizedBox(
            height: _containerHeight,
            width: double.infinity,
            child: child,
          ),
        ),
      ),
    );
  }
}

class _BackgroundColor extends StatelessWidget {
  const _BackgroundColor();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      height: _containerHeight,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            colorScheme.primary.withOpacity(.3),
            colorScheme.background,
          ],
          stops: const [.0, .04],
        ),
      ),
    );
  }
}

class _NeonDivider extends StatelessWidget {
  const _NeonDivider();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      height: 2,
      margin: const EdgeInsets.only(top: _containerHeight + 2),
      width: double.infinity,
      decoration: BoxDecoration(
        color: colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: colorScheme.primary,
            blurRadius: 2,
            spreadRadius: 1.5,
          ),
        ],
      ),
    );
  }
}

class _Recommendations extends StatefulWidget {
  const _Recommendations({Key? key, required this.list}) : super(key: key);

  final List<Anime> list;

  @override
  State<_Recommendations> createState() => _RecommendationsState();
}

class _RecommendationsState extends State<_Recommendations> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _Carousel(
          list: widget.list,
          onPageChanged: _onPageChanged,
        ),
        const SizedBox(height: 20),
        _PageIndicator(
          currentIndex: currentIndex,
          count: widget.list.length,
        ),
      ],
    );
  }

  _onPageChanged(int index, _) => setState(() {
        currentIndex = index;
      });
}

class _Carousel extends StatelessWidget {
  const _Carousel({Key? key, required this.list, required this.onPageChanged})
      : super(key: key);

  final List<Anime> list;
  final void Function(int, CarouselPageChangedReason) onPageChanged;

  @override
  Widget build(BuildContext context) {
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
                              _Image(imageUrl: anime.images!.maxSizeImage!),
                              _Score(
                                score: anime.score,
                                favorites: anime.favorites,
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

class _Score extends StatelessWidget {
  const _Score({
    required this.score,
    required this.favorites,
  });

  final double score;
  final int favorites;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        height: 30,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 5,
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: colorScheme.background.withOpacity(.75),
              blurRadius: 4,
              spreadRadius: 3,
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
              style: textTheme.titleSmall,
            ),
            const SizedBox(width: 2),
            const Spacer(),
            const SizedBox(width: 2),
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
              style: textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: BoxFit.fill,
      imageUrl: imageUrl,
      placeholder: (_, __) => const ImageShimmer(),
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

class _ContentPlaceholder extends StatelessWidget {
  const _ContentPlaceholder({
    Key? key,
    this.isShimmering = false,
  }) : super(key: key);

  final bool isShimmering;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 200,
      padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200,
            width: 130,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: isShimmering
                  ? const ImageShimmer()
                  : const ImagePlaceholder(),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: isShimmering ? _textShimmerContent() : _textContent(),
          ),
        ],
      ),
    );
  }

  Widget _textShimmerContent() {
    return ShimmerContainer(
      child: Column(
        children: const [
          SizedBox(height: 10),
          TextShimmerPlaceholder(height: 24, width: 130),
          SizedBox(height: 10),
          TextShimmerPlaceholder(
            height: 20 * 7,
            width: double.infinity,
          ),
        ],
      ),
    );
  }

  Column _textContent() {
    return Column(
      children: const [
        SizedBox(height: 10),
        TextPlaceholder(height: 24, width: 130),
        SizedBox(height: 10),
        TextPlaceholder(
          height: 20 * 7,
          width: double.infinity,
        ),
      ],
    );
  }
}
