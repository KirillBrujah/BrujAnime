import 'package:brujanime/models/models.dart';
import 'package:brujanime/ui/widgets/common_widgets/widgets.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList(
      {Key? key, required this.child, this.title, this.onNavigateTap})
      : super(key: key);

  final Widget child;
  final String? title;
  final VoidCallback? onNavigateTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
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
    Key? key,
    required this.data,
  }) : super(key: key);

  final List<Anime> data;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (Anime anime in data)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: HorizontalAnimeCard(
                anime: anime,
              ),
            ),
          //
        ],
      ),
    );
  }
}

class HorizontalListLoading extends StatelessWidget {
  const HorizontalListLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const NeverScrollableScrollPhysics(),
      child: ShimmerContainer(
        child: Row(
          children: [
            for (int i = 0; i < 3; i++)
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: HorizontalCardShimmerPlaceholder(),
              ),
            //
          ],
        ),
      ),
    );
  }
}

class HorizontalListError extends StatelessWidget {
  const HorizontalListError(this.message, {Key? key}) : super(key: key);

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
                for (int i = 0; i < 3; i++)
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: HorizontalCardPlaceholder(),
                  ),
                //
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
