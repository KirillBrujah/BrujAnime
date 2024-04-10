import 'package:brujanime/models/models.dart';
import 'package:brujanime/ui/theme/constants/card_constants.dart';
import 'package:brujanime/ui/theme/constants/screen_constants.dart';
import 'package:brujanime/ui/widgets/common_widgets/widgets.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList(
      {super.key, required this.child, this.title, this.onNavigateTap});

  final Widget child;
  final String? title;
  final VoidCallback? onNavigateTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (title != null)
          Padding(
            padding: ScreenConstants.contentPadding.copyWith(top: 0, bottom: 8),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    title!,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                if (onNavigateTap != null) ...[
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: onNavigateTap,
                    borderRadius: BorderRadius.circular(5),
                    child: SizedBox(
                      height: 34,
                      width: 34,
                      child: Icon(
                        Icons.navigate_next_rounded,
                        color: Theme.of(context).colorScheme.primary,
                        size: 34,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        child,
      ],
    );
  }
}

class HorizontalListData extends StatelessWidget {
  const HorizontalListData({
    super.key,
    required this.data,
  });

  final List<Anime> data;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: ScreenConstants.contentPadding.left),
          for (int i = 0; i < data.length; i++) ...[
            HorizontalAnimeCard(
              anime: data[i],
            ),
            if (i < data.length - 1) const SizedBox(width: CardConstants.horizontalSpace),
          ],
          SizedBox(width: ScreenConstants.contentPadding.right),
        ],
      ),
    );
  }
}

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

class HorizontalListError extends StatelessWidget {
  const HorizontalListError(this.message, {super.key});

  final String message;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            child: Row(
              children: [
                SizedBox(width: ScreenConstants.contentPadding.left),

                for (int i = 0; i < 3; i++)
                  const Padding(
                    padding: EdgeInsets.only(right: CardConstants.horizontalSpace),
                    child: HorizontalCardPlaceholder(),
                  ),

                SizedBox(width: ScreenConstants.contentPadding.right),
              ],
            ),
          ),
          Center(
            child: Text(
              message,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
