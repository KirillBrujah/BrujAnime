import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

const _plugColor = Colors.white;

class _Shimmer extends StatelessWidget {
  const _Shimmer({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Shimmer.fromColors(
      baseColor: colorScheme.background,
      highlightColor: colorScheme.primary,
      child: child ?? Container(color: _plugColor),
    );
  }
}

class _TextShimmer extends StatelessWidget {
  const _TextShimmer({Key? key, required this.height, required this.width})
      : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return _Shimmer(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: _plugColor,
        ),
        height: height,
        width: width,
      ),
    );
  }
}

class _TextPlaceholder extends StatelessWidget {
  const _TextPlaceholder({Key? key, required this.height, required this.width})
      : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: _plugColor,
      ),
      height: height,
      width: width,
    );
  }
}

class ImageShimmerPlaceholder extends StatelessWidget {
  const ImageShimmerPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _Shimmer();
  }
}

class HomeRecommendationsCarouselShimmer extends StatelessWidget {
  const HomeRecommendationsCarouselShimmer({Key? key}) : super(key: key);

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
              child: const _Shimmer(),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: _Shimmer(
              child: Column(
                children: const [
                  SizedBox(height: 10),
                  _TextPlaceholder(height: 24, width: 80),
                  SizedBox(height: 10),
                  _TextPlaceholder(
                    height: 20 * 7,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
