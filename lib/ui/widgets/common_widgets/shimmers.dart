import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

const _plugColor = Colors.white;

class ShimmerContainer extends StatelessWidget {
  const ShimmerContainer({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Shimmer.fromColors(
      baseColor: colorScheme.background,
      highlightColor: colorScheme.primary.withOpacity(.2),
      child: child ?? Container(color: _plugColor),
    );
  }
}

class TextShimmerPlaceholder extends StatelessWidget {
  const TextShimmerPlaceholder(
      {Key? key, required this.height, required this.width})
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

class TextPlaceholder extends StatelessWidget {
  const TextPlaceholder({Key? key, required this.height, required this.width})
      : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: colorScheme.primary.withOpacity(.1),
      ),
      height: height,
      width: width,
    );
  }
}

class ImageShimmer extends StatelessWidget {
  const ImageShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ShimmerContainer();
  }
}

class ImagePlaceholder extends StatelessWidget {
  const ImagePlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Theme.of(context).colorScheme.primary.withOpacity(.1),
      ),
    );
  }
}

class HorizontalCardShimmerPlaceholder extends StatelessWidget {
  const HorizontalCardShimmerPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: _plugColor,
        borderRadius: BorderRadius.circular(5),
      ),
      width: 140,
      height: 283,
    );
  }
}

class HorizontalCardPlaceholder extends StatelessWidget {
  const HorizontalCardPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: colorScheme.primary.withOpacity(.1),
        borderRadius: BorderRadius.circular(5),
      ),
      width: 140,
      height: 283,
    );
  }
}
