import 'dart:math' as math;

import 'package:auto_route/auto_route.dart';
import 'package:brujanime/blocs/blocs.dart';
import 'package:brujanime/generated/assets.gen.dart';
import 'package:brujanime/generated/l10n.dart';
import 'package:brujanime/ui/widgets/common_widgets/widgets.dart';
import 'package:brujanime/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const _backgroundImageAlignments = [
  Alignment.bottomRight,
  Alignment.topLeft,
  Alignment.bottomCenter,
  Alignment.topCenter,
  Alignment.center,
  Alignment.centerLeft,
  Alignment.centerRight,
  Alignment.bottomLeft,
  Alignment.topRight,
];


@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Replace season now fetch
    context.read<SeasonNowBloc>().add(const SeasonNowEvent.fetch());

    final colorScheme = Theme.of(context).colorScheme;

    return BlocProvider(
      create: (_) => ApplicationPreloadCubit()..startLoad(),
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Assets.images.splash.image().image,
              fit: BoxFit.cover,
              alignment: _backgroundImageAlignments[
                  math.Random().nextInt(_backgroundImageAlignments.length)],
              opacity: 0.055,
            ),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                colorScheme.background,
                colorScheme.onPrimary,
                colorScheme.background,
              ],
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocConsumer<ApplicationPreloadCubit, ApplicationPreloadState>(
                listener: _splashListener,
                builder: (context, state) =>
                    ProgressLogo(progress: state.progress),
              ),
              const SizedBox(height: 20),
              const _LogoText(),
            ],
          ),
        ),
      ),
    );
  }

  void _splashListener(context, ApplicationPreloadState state) {
    state.mapOrNull(completed: (state) {
      // TODO: Saving loaded data into objects
      AutoRouter.of(context).replace(const MainRoute());
    });
  }
}

class _LogoText extends StatelessWidget {
  const _LogoText();

  @override
  Widget build(BuildContext context) {
    return Text(
      S.of(context).BrujAnime,
      style: Theme.of(context).textTheme.displayLarge,
    );
  }
}
