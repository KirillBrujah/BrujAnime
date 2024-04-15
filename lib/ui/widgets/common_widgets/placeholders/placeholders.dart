
import 'package:brujanime/ui/theme/constants/constants.dart';
import 'package:flutter/material.dart';

class TextPlaceholder extends StatelessWidget {
  const TextPlaceholder({super.key, required this.height, required this.width});

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


class ImagePlaceholder extends StatelessWidget {
  const ImagePlaceholder({super.key});

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

class HorizontalCardPlaceholder extends StatelessWidget {
  const HorizontalCardPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: colorScheme.primary.withOpacity(.1),
        borderRadius: BorderRadius.circular(5),
      ),
      width: CardConstants.horizontalCardSize.width,
      height: CardConstants.horizontalCardSize.height,
    );
  }
}
