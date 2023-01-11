import 'dart:math' as math;

import 'package:brujanime/blocs/splash/splash_cubit.dart';
import 'package:brujanime/generated/l10n.dart';
import 'package:brujanime/ui/widgets/progress_logo.dart';
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
    return BlocProvider(
      create: (_) => SplashCubit()..startLoad(),
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: Image.asset("assets/images/splash.jpeg").image,
                fit: BoxFit.cover,
                alignment: _backgroundImageAlignments[
                    math.Random().nextInt(_backgroundImageAlignments.length)],
                opacity: 0.055),
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
              BlocConsumer<SplashCubit, SplashState>(
                listener: (context, state) {
                  // TODO: Событие загрузки
                },
                builder: (context, state) {
                  return ProgressLogo(progress: state.progress);
                },
              ),
              const SizedBox(height: 20),
              Text(
                S.of(context).BrujAnime,
                style: GoogleFonts.prompt(
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 3,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
