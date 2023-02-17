import 'dart:math' as math;

import 'package:auto_route/auto_route.dart';
import 'package:brujanime/blocs/blocs.dart';
import 'package:brujanime/generated/assets.gen.dart';
import 'package:brujanime/generated/l10n.dart';
import 'package:brujanime/ui/widgets/common_widgets/widgets.dart';
import 'package:brujanime/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

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

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context
        .read<AnimeRecommendationsBloc>()
        .add(const AnimeRecommendationsEvent.fetch());
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
                Theme.of(context).colorScheme.background,
                Theme.of(context).colorScheme.onPrimary,
                Theme.of(context).colorScheme.background,
                // Theme.of(context).colorScheme.primary,
              ],
              // stops: const [0.0, 0.9, 1.0],
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocConsumer<ApplicationPreloadCubit, ApplicationPreloadState>(
                listener: _splashListener,
                builder: (context, state) {
                  return ProgressLogo(progress: state.progress);
                },
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
  const _LogoText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      S.of(context).BrujAnime,
      style: GoogleFonts.prompt(
        fontSize: 50,
        fontWeight: FontWeight.w700,
        letterSpacing: 3,
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
