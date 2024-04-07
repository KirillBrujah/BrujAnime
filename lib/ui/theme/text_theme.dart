import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_scheme.dart';

final _displayLarge = GoogleFonts.prompt(
  fontSize: 57,
  fontWeight: FontWeight.w700,
  letterSpacing: 3,
  color: colorScheme.primary,
);

final _headlineLarge = GoogleFonts.prompt(
  fontSize: 32,
  color: colorScheme.primary,
);
final _headlineMedium = GoogleFonts.prompt(
  fontSize: 28,
  color: colorScheme.primary,
);
final _headlineSmall = GoogleFonts.prompt(
  fontSize: 24,
  color: colorScheme.primary,
);

final _titleLarge = GoogleFonts.prompt(
  fontSize: 22,
  color: colorScheme.primary,
  fontWeight: FontWeight.w500,
);
final _titleMedium = GoogleFonts.prompt(
  fontSize: 16,
  color: colorScheme.primary,
  fontWeight: FontWeight.w500,
);
final _titleSmall = GoogleFonts.prompt(
  fontSize: 14,
  color: colorScheme.primary,
  fontWeight: FontWeight.w500,
);

final _labelLarge = GoogleFonts.prompt(
  fontSize: 14,
  color: colorScheme.primary,
  fontWeight: FontWeight.w500,
);
final _labelMedium = GoogleFonts.prompt(
  fontSize: 12,
  color: colorScheme.primary,
  fontWeight: FontWeight.w500,
);
final _labelSmall = GoogleFonts.prompt(
  fontSize: 11,
  color: colorScheme.primary,
  fontWeight: FontWeight.w500,
);

final _bodyLarge = GoogleFonts.roboto(
  fontSize: 16,
  color: colorScheme.onBackground,
);
final _bodyMedium = GoogleFonts.roboto(
  fontSize: 14,
  color: colorScheme.onBackground.withOpacity(.65),
);
final _bodySmall = GoogleFonts.roboto(
  fontSize: 12,
  color: colorScheme.onBackground.withOpacity(.65),
);

final textTheme = TextTheme(
  displayLarge: _displayLarge,
  headlineLarge: _headlineLarge,
  headlineMedium: _headlineMedium,
  headlineSmall: _headlineSmall,
  titleLarge: _titleLarge,
  titleMedium: _titleMedium,
  titleSmall: _titleSmall,
  labelLarge: _labelLarge,
  labelMedium: _labelMedium,
  labelSmall: _labelSmall,
  bodyLarge: _bodyLarge,
  bodyMedium: _bodyMedium,
  bodySmall: _bodySmall,
);
