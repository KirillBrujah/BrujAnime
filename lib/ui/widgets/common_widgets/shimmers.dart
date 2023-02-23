import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ImageShimmerPlaceholder extends StatelessWidget {
  const ImageShimmerPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    // return Shimmer(
    //   gradient: LinearGradient(
    //     colors: [
    //       Theme.of(context).colorScheme.primary,
    //       Theme.of(context).colorScheme.background,
    //       Theme.of(context).colorScheme.primary,
    //     ],
    //   ),
    //   child: Container(
    //     color: Colors.red,
    //   ),
    // );
    return Shimmer.fromColors(
      baseColor: colorScheme.background,
      highlightColor: colorScheme.primary,
      child: Container(color: colorScheme.background),
    );
  }
}
