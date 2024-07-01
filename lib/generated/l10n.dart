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

  /// `Booky`
  String get app_name {
    return Intl.message(
      'Booky',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Your Infinite Library`
  String get onboarding_title1 {
    return Intl.message(
      'Welcome to Your Infinite Library',
      name: 'onboarding_title1',
      desc: '',
      args: [],
    );
  }

  /// `Discover, read, and enjoy a vast collection of eBooks.`
  String get onboarding_sub_title1 {
    return Intl.message(
      'Discover, read, and enjoy a vast collection of eBooks.',
      name: 'onboarding_sub_title1',
      desc: '',
      args: [],
    );
  }

  /// `Find Your Favorite Books with Ease`
  String get onboarding_title2 {
    return Intl.message(
      'Find Your Favorite Books with Ease',
      name: 'onboarding_title2',
      desc: '',
      args: [],
    );
  }

  /// `Browse by genre, author, or use our advanced search feature.`
  String get onboarding_sub_title2 {
    return Intl.message(
      'Browse by genre, author, or use our advanced search feature.',
      name: 'onboarding_sub_title2',
      desc: '',
      args: [],
    );
  }

  /// `Start Your Reading Journey Now`
  String get onboarding_title3 {
    return Intl.message(
      'Start Your Reading Journey Now',
      name: 'onboarding_title3',
      desc: '',
      args: [],
    );
  }

  /// `Join and start exploring an amazing world of books.`
  String get onboarding_sub_title3 {
    return Intl.message(
      'Join and start exploring an amazing world of books.',
      name: 'onboarding_sub_title3',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get submit_button {
    return Intl.message(
      'Login',
      name: 'submit_button',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Join`
  String get finish_button {
    return Intl.message(
      'Join',
      name: 'finish_button',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `name`
  String get name {
    return Intl.message(
      'name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Taha Hassan`
  String get name_hint {
    return Intl.message(
      'Taha Hassan',
      name: 'name_hint',
      desc: '',
      args: [],
    );
  }

  /// `Email address`
  String get email {
    return Intl.message(
      'Email address',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Your email`
  String get email_hint {
    return Intl.message(
      'Your email',
      name: 'email_hint',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `********`
  String get password_hint {
    return Intl.message(
      '********',
      name: 'password_hint',
      desc: '',
      args: [],
    );
  }

  /// `Other sign in options`
  String get other_sign_in_options {
    return Intl.message(
      'Other sign in options',
      name: 'other_sign_in_options',
      desc: '',
      args: [],
    );
  }

  /// `Hi`
  String get hi {
    return Intl.message(
      'Hi',
      name: 'hi',
      desc: '',
      args: [],
    );
  }

  /// `What will you read today?`
  String get home_title {
    return Intl.message(
      'What will you read today?',
      name: 'home_title',
      desc: '',
      args: [],
    );
  }

  /// `Your Books`
  String get your_books {
    return Intl.message(
      'Your Books',
      name: 'your_books',
      desc: '',
      args: [],
    );
  }

  /// `See All`
  String get see_all {
    return Intl.message(
      'See All',
      name: 'see_all',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Recent Searches`
  String get recent_searches {
    return Intl.message(
      'Recent Searches',
      name: 'recent_searches',
      desc: '',
      args: [],
    );
  }

  /// `Free ebooks`
  String get free_ebooks {
    return Intl.message(
      'Free ebooks',
      name: 'free_ebooks',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'paid-ebooks' key

  /// `My Books`
  String get my_books {
    return Intl.message(
      'My Books',
      name: 'my_books',
      desc: '',
      args: [],
    );
  }

  /// `About The Book`
  String get about_the_book {
    return Intl.message(
      'About The Book',
      name: 'about_the_book',
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
