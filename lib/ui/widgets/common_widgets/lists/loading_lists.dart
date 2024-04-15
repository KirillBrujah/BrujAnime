import 'dart:ffi';

import 'package:brujanime/models/models.dart';
import 'package:brujanime/ui/theme/constants/card_constants.dart';
import 'package:brujanime/ui/theme/constants/screen_constants.dart';
import 'package:brujanime/ui/widgets/common_widgets/widgets.dart';
import 'package:flutter/material.dart';

class HorizontalListLoading extends StatelessWidget {
  const HorizontalListLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const NeverScrollableScrollPhysics(),
      child: ShimmerContainer(
        child: Row(
          children: [
            SizedBox(width: ScreenConstants.contentPadding.left),
            for (int i = 0; i < 3; i++)
              const Padding(
                padding: EdgeInsets.only(right: CardConstants.horizontalSpace),
                child: HorizontalCardShimmerPlaceholder(),
              ),
            SizedBox(width: ScreenConstants.contentPadding.right),
          ],
        ),
      ),
    );
  }
}

class TopListLoading extends StatelessWidget {
  const TopListLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          const TopFirstCardShimmer(),
          const SizedBox(height: 30),
          ShimmerContainer(
            child: Column(
              children: List.generate(10, (_) => const TopCardShimmer()),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
