import 'package:auto_route/annotations.dart';
import 'package:brujanime/models/models.dart';
import 'package:brujanime/ui/widgets/common_widgets/widgets.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AnimePage extends StatelessWidget {
  const AnimePage({super.key, required this.anime});

  final Anime anime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DetailsAppBar(
        title: anime.simpleTitle,
      ),
    );
  }
}
