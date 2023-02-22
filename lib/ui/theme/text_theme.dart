part of 'theme.dart';

final _displayLarge = GoogleFonts.prompt(
  fontSize: 57,
  fontWeight: FontWeight.w700,
  letterSpacing: 3,
  color: _primary,
);

final _headlineLarge = GoogleFonts.prompt(
  fontSize: 32,
);

final _headlineMedium = GoogleFonts.prompt(
  fontSize: 28,
);

final _headlineSmall = GoogleFonts.prompt(
  fontSize: 24,
);

final _titleLarge = GoogleFonts.roboto(
    //
    );

final _textTheme = TextTheme(
  displayLarge: _displayLarge,
  headlineLarge: _headlineLarge,
  headlineMedium: _headlineMedium,
  headlineSmall: _headlineSmall,
  titleLarge: _titleLarge,
);
