part of 'theme.dart';

final _displayLarge = GoogleFonts.prompt(
  fontSize: 57,
  fontWeight: FontWeight.w700,
  letterSpacing: 3,
  color: _primary,
);

final _headlineLarge = GoogleFonts.prompt(
  fontSize: 32,
  color: _primary,
);
final _headlineMedium = GoogleFonts.prompt(
  fontSize: 28,
  color: _primary,
);
final _headlineSmall = GoogleFonts.prompt(
  fontSize: 24,
  color: _primary,
);

final _titleLarge = GoogleFonts.prompt(
  fontSize: 22,
  color: _primary,
  fontWeight: FontWeight.w500,
);
final _titleMedium = GoogleFonts.prompt(
  fontSize: 16,
  color: _primary,
  fontWeight: FontWeight.w500,
);
final _titleSmall = GoogleFonts.prompt(
  fontSize: 14,
  color: _primary,
  fontWeight: FontWeight.w500,
);

final _bodyLarge = GoogleFonts.roboto(
  fontSize: 16,
  color: _onBackground,
);
final _bodyMedium = GoogleFonts.roboto(
  fontSize: 14,
  color: _onBackground,
);
final _bodySmall = GoogleFonts.roboto(
  fontSize: 12,
  color: _onBackground,
);

final _textTheme = TextTheme(
  displayLarge: _displayLarge,
  headlineLarge: _headlineLarge,
  headlineMedium: _headlineMedium,
  headlineSmall: _headlineSmall,
  titleLarge: _titleLarge,
  titleMedium: _titleMedium,
  titleSmall: _titleSmall,
  bodyLarge: _bodyLarge,
  bodyMedium: _bodyMedium,
  bodySmall: _bodySmall,
);
