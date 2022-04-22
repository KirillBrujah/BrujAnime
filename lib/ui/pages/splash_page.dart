import 'dart:math' as math;

import 'package:flutter/material.dart';

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
    return Scaffold(
      body: Container(
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
            const Center(
              child: CircularProgressIndicator(),
            ),
            const SizedBox(height: 20),
            Text(
              "BrujAnime",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.5,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
