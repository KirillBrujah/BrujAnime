import 'package:brujanime/models/models.dart';
import 'package:brujanime/ui/theme/constants/card_constants.dart';
import 'package:brujanime/ui/theme/constants/screen_constants.dart';
import 'package:brujanime/ui/widgets/common_widgets/widgets.dart';
import 'package:flutter/material.dart';

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
