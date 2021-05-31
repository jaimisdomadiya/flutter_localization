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

  /// `Hi welcome`
  String get welcomeText {
    return Intl.message(
      'Hi welcome',
      name: 'welcomeText',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to this app`
  String get welcome_msg {
    return Intl.message(
      'Welcome to this app',
      name: 'welcome_msg',
      desc: '',
      args: [],
    );
  }

  /// `where are you`
  String get where_are_you {
    return Intl.message(
      'where are you',
      name: 'where_are_you',
      desc: '',
      args: [],
    );
  }

  /// `good morning`
  String get good_morning {
    return Intl.message(
      'good morning',
      name: 'good_morning',
      desc: '',
      args: [],
    );
  }

  /// `welcome back`
  String get welcome_back {
    return Intl.message(
      'welcome back',
      name: 'welcome_back',
      desc: '',
      args: [],
    );
  }

  /// `Hello`
  String get hello {
    return Intl.message(
      'Hello',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Story`
  String get story {
    return Intl.message(
      'Story',
      name: 'story',
      desc: '',
      args: [],
    );
  }

  /// `Read Story`
  String get read_story {
    return Intl.message(
      'Read Story',
      name: 'read_story',
      desc: '',
      args: [],
    );
  }

  /// `History of Hindi`
  String get history_of_hindi {
    return Intl.message(
      'History of Hindi',
      name: 'history_of_hindi',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get change_language {
    return Intl.message(
      'Change Language',
      name: 'change_language',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `May your language progress, the root of all progress|`
  String get history_taught_1 {
    return Intl.message(
      'May your language progress, the root of all progress|',
      name: 'history_taught_1',
      desc: '',
      args: [],
    );
  }

  /// `Without knowledge, without being foolish, foolish||`
  String get history_taught_2 {
    return Intl.message(
      'Without knowledge, without being foolish, foolish||',
      name: 'history_taught_2',
      desc: '',
      args: [],
    );
  }

  /// `The official language of the Union shall be Hindi in Devanagari script. The form of numerals to be used for the official purposes of the Union shall be the international form of Indian numerals.`
  String get hindi_description_1 {
    return Intl.message(
      'The official language of the Union shall be Hindi in Devanagari script. The form of numerals to be used for the official purposes of the Union shall be the international form of Indian numerals.',
      name: 'hindi_description_1',
      desc: '',
      args: [],
    );
  }

  /// `Notwithstanding anything in clause (1), for a period of fifteen years from the commencement of this Constitution, the English language shall continue to be used for all the official purposes of the Union for which it was being used immediately before such commencement: Provided that the President may, during the said period, by order authorise the use of the Hindi language in addition to the English language and of the Devanagari form of numerals in addition to the international form of Indian numerals for any of the official purposes of the Union`
  String get hindi_description_2 {
    return Intl.message(
      'Notwithstanding anything in clause (1), for a period of fifteen years from the commencement of this Constitution, the English language shall continue to be used for all the official purposes of the Union for which it was being used immediately before such commencement: Provided that the President may, during the said period, by order authorise the use of the Hindi language in addition to the English language and of the Devanagari form of numerals in addition to the international form of Indian numerals for any of the official purposes of the Union',
      name: 'hindi_description_2',
      desc: '',
      args: [],
    );
  }

  /// `Once, there was a boy who became bored when he watched over the village sheep grazing on the hillside.`
  String get story_1 {
    return Intl.message(
      'Once, there was a boy who became bored when he watched over the village sheep grazing on the hillside.',
      name: 'story_1',
      desc: '',
      args: [],
    );
  }

  /// `To entertain himself, he sang out, “Wolf! Wolf! The wolf is chasing the sheep!”`
  String get story_2 {
    return Intl.message(
      'To entertain himself, he sang out, “Wolf! Wolf! The wolf is chasing the sheep!”',
      name: 'story_2',
      desc: '',
      args: [],
    );
  }

  /// `When the villagers heard the cry, they came running up the hill to drive the wolf away. But, when they arrived, they saw no wolf. The boy was amused when seeing their angry faces.`
  String get story_3 {
    return Intl.message(
      'When the villagers heard the cry, they came running up the hill to drive the wolf away. But, when they arrived, they saw no wolf. The boy was amused when seeing their angry faces.',
      name: 'story_3',
      desc: '',
      args: [],
    );
  }

  /// `“Don’t scream wolf, boy,” warned the villagers, “when there is no wolf!” They angrily went back down the hill.`
  String get story_4 {
    return Intl.message(
      '“Don’t scream wolf, boy,” warned the villagers, “when there is no wolf!” They angrily went back down the hill.',
      name: 'story_4',
      desc: '',
      args: [],
    );
  }

  /// `Later, the shepherd boy cried out once again, “Wolf! Wolf! The wolf is chasing the sheep!” To his amusement, he looked on as the villagers came running up the hill to scare the wolf away.`
  String get story_5 {
    return Intl.message(
      'Later, the shepherd boy cried out once again, “Wolf! Wolf! The wolf is chasing the sheep!” To his amusement, he looked on as the villagers came running up the hill to scare the wolf away.',
      name: 'story_5',
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
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'hi'),
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
