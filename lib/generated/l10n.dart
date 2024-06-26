// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `BrujAnime`
  String get BrujAnime {
    return Intl.message(
      'BrujAnime',
      name: 'BrujAnime',
      desc: '',
      args: [],
    );
  }

  /// `Brujiko`
  String get Brujiko {
    return Intl.message(
      'Brujiko',
      name: 'Brujiko',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Catalog`
  String get catalog {
    return Intl.message(
      'Catalog',
      name: 'catalog',
      desc: '',
      args: [],
    );
  }

  /// `Genres`
  String get genres {
    return Intl.message(
      'Genres',
      name: 'genres',
      desc: '',
      args: [],
    );
  }

  /// `Top`
  String get top {
    return Intl.message(
      'Top',
      name: 'top',
      desc: '',
      args: [],
    );
  }

  /// `Favorite`
  String get favorite {
    return Intl.message(
      'Favorite',
      name: 'favorite',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Top All`
  String get top_all {
    return Intl.message(
      'Top All',
      name: 'top_all',
      desc: '',
      args: [],
    );
  }

  /// `Top Airing`
  String get top_airing {
    return Intl.message(
      'Top Airing',
      name: 'top_airing',
      desc: '',
      args: [],
    );
  }

  /// `Top Upcoming`
  String get top_upcoming {
    return Intl.message(
      'Top Upcoming',
      name: 'top_upcoming',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `Airing`
  String get airing {
    return Intl.message(
      'Airing',
      name: 'airing',
      desc: '',
      args: [],
    );
  }

  /// `Upcoming`
  String get upcoming {
    return Intl.message(
      'Upcoming',
      name: 'upcoming',
      desc: '',
      args: [],
    );
  }

  /// `Schedule`
  String get schedule {
    return Intl.message(
      'Schedule',
      name: 'schedule',
      desc: '',
      args: [],
    );
  }

  /// `Daily`
  String get daily {
    return Intl.message(
      'Daily',
      name: 'daily',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message(
      'Today',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `Recommendations`
  String get recommendations {
    return Intl.message(
      'Recommendations',
      name: 'recommendations',
      desc: '',
      args: [],
    );
  }

  /// `List is empty`
  String get list_is_empty {
    return Intl.message(
      'List is empty',
      name: 'list_is_empty',
      desc: '',
      args: [],
    );
  }

  /// `Can't load data`
  String get data_load_error {
    return Intl.message(
      'Can\'t load data',
      name: 'data_load_error',
      desc: '',
      args: [],
    );
  }

  /// `Can't load Top`
  String get top_load_error {
    return Intl.message(
      'Can\'t load Top',
      name: 'top_load_error',
      desc: '',
      args: [],
    );
  }

  /// `Can't load Recommendations`
  String get recommendations_load_error {
    return Intl.message(
      'Can\'t load Recommendations',
      name: 'recommendations_load_error',
      desc: '',
      args: [],
    );
  }

  /// `Can't load current season info`
  String get season_now_load_error {
    return Intl.message(
      'Can\'t load current season info',
      name: 'season_now_load_error',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
