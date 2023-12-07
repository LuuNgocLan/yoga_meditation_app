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

  /// `Have the best`
  String get have_the_best {
    return Intl.message(
      'Have the best',
      name: 'have_the_best',
      desc: '',
      args: [],
    );
  }

  /// `yoga experience`
  String get yoga_experience {
    return Intl.message(
      'yoga experience',
      name: 'yoga_experience',
      desc: '',
      args: [],
    );
  }

  /// `Transform your body and mind with our comprehensive yoga app. Discover expert-led classes, personalized routines`
  String get start_content {
    return Intl.message(
      'Transform your body and mind with our comprehensive yoga app. Discover expert-led classes, personalized routines',
      name: 'start_content',
      desc: '',
      args: [],
    );
  }

  /// `start Journey`
  String get start_journey {
    return Intl.message(
      'start Journey',
      name: 'start_journey',
      desc: '',
      args: [],
    );
  }

  /// `Namaste,`
  String get namaste {
    return Intl.message(
      'Namaste,',
      name: 'namaste',
      desc: '',
      args: [],
    );
  }

  /// `Let’s start basic`
  String get let_start_basic {
    return Intl.message(
      'Let’s start basic',
      name: 'let_start_basic',
      desc: '',
      args: [],
    );
  }

  /// `yoga and meditation`
  String get yoga_and_meditation {
    return Intl.message(
      'yoga and meditation',
      name: 'yoga_and_meditation',
      desc: '',
      args: [],
    );
  }

  /// `Recommended Courses`
  String get recommended_courses {
    return Intl.message(
      'Recommended Courses',
      name: 'recommended_courses',
      desc: '',
      args: [],
    );
  }

  /// `Relaxing Music`
  String get relaxing_music {
    return Intl.message(
      'Relaxing Music',
      name: 'relaxing_music',
      desc: '',
      args: [],
    );
  }

  /// `Now Playing`
  String get now_playing {
    return Intl.message(
      'Now Playing',
      name: 'now_playing',
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
