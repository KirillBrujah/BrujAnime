import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'shimmers.dart';

class KNetworkImage extends StatelessWidget {
  const KNetworkImage({
    Key? key,
    this.imageUrl,
    this.height = double.infinity,
    this.width = double.infinity,
    this.borderRadius,
  }) : super(key: key);

  final String? imageUrl;
  final double width;
  final double height;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: borderRadius,
        // TODO: Create placeholder widget
        child: imageUrl == null
            ? const Placeholder()
            : CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl: imageUrl!,
                placeholder: (_, __) => const ImageShimmer(),
              ),
      ),
    );
  }
}
