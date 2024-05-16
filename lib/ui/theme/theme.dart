import 'package:brujanime/ui/theme/color_scheme.dart';
import 'package:brujanime/ui/theme/text_theme.dart';
import 'package:flutter/material.dart';

final _bottomNavigationBarTheme = BottomNavigationBarThemeData(
  selectedItemColor: colorScheme.primary,
  unselectedItemColor: colorScheme.secondary,
  showSelectedLabels: true,
  showUnselectedLabels: true,
);

final _iconTheme = IconThemeData(
  color: colorScheme.primary,
);

const _pageTransitionTheme = PageTransitionsTheme(builders: {
  TargetPlatform.android:
      ZoomPageTransitionsBuilder(allowEnterRouteSnapshotting: false)
});

final kDarkTheme = ThemeData.from(
  colorScheme: colorScheme,
).copyWith(
  bottomNavigationBarTheme: _bottomNavigationBarTheme,
  iconTheme: _iconTheme,
  splashColor: colorScheme.primary.withOpacity(0.5),
  textTheme: textTheme,
  pageTransitionsTheme: _pageTransitionTheme,
);
