import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'shimmers.dart';

class KNetworkImage extends StatelessWidget {
  const KNetworkImage({
    Key? key,
    this.imageUrl,
    this.height = double.infinity,
    this.width = double.infinity,
    this.fit = BoxFit.fill,
    this.borderRadius,
  }) : super(key: key);

  final String? imageUrl;
  final double width;
  final double height;
  final BorderRadius? borderRadius;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.zero,
        child: imageUrl == null
            ? _ImagePlaceholder(borderRadius: borderRadius)
            : CachedNetworkImage(
                fit: fit,
                imageUrl: imageUrl!,
                errorWidget: (_, __, ___) => const _ImagePlaceholder(),
                placeholder: (_, __) => const ImageShimmer(),
              ),
      ),
    );
  }
}

class _ImagePlaceholder extends StatelessWidget {
  const _ImagePlaceholder({Key? key, this.borderRadius}) : super(key: key);

  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary.withOpacity(.5);
    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        border: Border.all(color: primaryColor),
      ),
      child: Placeholder(color: primaryColor),
    );
  }
}
