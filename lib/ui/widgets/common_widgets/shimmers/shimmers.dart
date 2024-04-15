import 'package:brujanime/ui/theme/constants/constants.dart';
import 'package:brujanime/ui/theme/constants/screen_constants.dart';
import 'package:brujanime/ui/widgets/common_widgets/placeholders/placeholders.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerContainer extends StatelessWidget {
  const ShimmerContainer({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Shimmer.fromColors(
      baseColor: colorScheme.background,
      highlightColor: colorScheme.primary.withOpacity(.2),
      child: child ?? Container(color: colorScheme.onBackground),
    );
  }
}

class TextShimmerPlaceholder extends StatelessWidget {
  const TextShimmerPlaceholder(
      {super.key, required this.height, required this.width});

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Theme.of(context).colorScheme.onBackground,
      ),
      height: height,
      width: width,
    );
  }
}

class ImageShimmer extends StatelessWidget {
  const ImageShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const ShimmerContainer();
  }
}

class HorizontalCardShimmerPlaceholder extends StatelessWidget {
  const HorizontalCardShimmerPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onBackground,
        borderRadius: BorderRadius.circular(5),
      ),
      width: CardConstants.horizontalCardSize.width,
      height: CardConstants.horizontalCardSize.height,
    );
  }
}

class TopFirstCardShimmer extends StatelessWidget {
  const TopFirstCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: colorScheme.surface,
        border: Border(
          bottom: BorderSide(color: colorScheme.primary, width: 1),
        ),
      ),
      padding: ScreenConstants.contentPadding,
      child: ShimmerContainer(
        child: SizedBox(
          height: 200,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
                width: 130,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: const ImageShimmer(),
                ),
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextShimmerPlaceholder(
                      width: 50,
                      height: 24,
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        TextShimmerPlaceholder(
                          width: 60,
                          height: 16,
                        ),
                        Spacer(),
                        TextShimmerPlaceholder(
                          width: 100,
                          height: 16,
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    TextShimmerPlaceholder(
                      width: 50,
                      height: 150,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopCardShimmer extends StatelessWidget {
  const TopCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ScreenConstants.contentPadding
          .copyWith(top: .5, bottom: CardConstants.space),
      child: SizedBox(
        height: 110,
        child: Row(
          children: [
            const TextShimmerPlaceholder(height: 20, width: 15),
            const SizedBox(width: 10),
            Expanded(
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: const SizedBox(
                      width: 80,
                      child: ImageShimmer(),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextShimmerPlaceholder(height: 20, width: 140),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            TextShimmerPlaceholder(height: 16, width: 70),
                            Spacer(),
                            TextShimmerPlaceholder(height: 16, width: 40),
                            SizedBox(width: 10),
                            TextShimmerPlaceholder(height: 16, width: 40),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
