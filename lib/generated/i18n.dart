import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

//This file is automatically generated. DO NOT EDIT, all your changes would be lost.
class S implements WidgetsLocalizations {
  const S();

  static const GeneratedLocalizationsDelegate delegate =
    GeneratedLocalizationsDelegate();

  static S of(BuildContext context) => Localizations.of<S>(context, S);

  @override
  TextDirection get textDirection => TextDirection.ltr;

  String get button => "Button";
  String get chameleonMiniApp => "Chameleon Mini App";
  String get effectiveAfterRestartingTheApp => "Effective after restarting app";
  String get english => "English";
  String get generalSetting => "General Setting";
  String get language => "Language";
  String get mode => "Mode";
  String get selectLanguage => "Select Language";
  String get settings => "Settings";
  String get slot => "Slot";
  String get systemDefault => "System Default";
  String get traditionalChinese => "Traditional Chinese";
  String get uid => "UID";
}

class $zh_TW extends S {
  const $zh_TW();

  @override
  TextDirection get textDirection => TextDirection.ltr;

  @override
  String get button => "按鈕";
  @override
  String get mode => "模式";
  @override
  String get systemDefault => "系統預設";
  @override
  String get selectLanguage => "選擇語言";
  @override
  String get settings => "設定";
  @override
  String get traditionalChinese => "正體中文";
  @override
  String get uid => "UID";
  @override
  String get effectiveAfterRestartingTheApp => "重啟App後生效";
  @override
  String get english => "英文";
  @override
  String get language => "語言";
  @override
  String get slot => "槽位";
  @override
  String get generalSetting => "一般設定";
}

class $en extends S {
  const $en();
}

class GeneratedLocalizationsDelegate extends LocalizationsDelegate<S> {
  const GeneratedLocalizationsDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale("zh", "TW"),
      Locale("en", ""),
    ];
  }

  LocaleListResolutionCallback listResolution({Locale fallback}) {
    return (List<Locale> locales, Iterable<Locale> supported) {
      if (locales == null || locales.isEmpty) {
        return fallback ?? supported.first;
      } else {
        return _resolve(locales.first, fallback, supported);
      }
    };
  }

  LocaleResolutionCallback resolution({Locale fallback}) {
    return (Locale locale, Iterable<Locale> supported) {
      return _resolve(locale, fallback, supported);
    };
  }

  Locale _resolve(Locale locale, Locale fallback, Iterable<Locale> supported) {
    if (locale == null || !isSupported(locale)) {
      return fallback ?? supported.first;
    }

    final Locale languageLocale = Locale(locale.languageCode, "");
    if (supported.contains(locale)) {
      return locale;
    } else if (supported.contains(languageLocale)) {
      return languageLocale;
    } else {
      final Locale fallbackLocale = fallback ?? supported.first;
      return fallbackLocale;
    }
  }

  @override
  Future<S> load(Locale locale) {
    final String lang = getLang(locale);
    if (lang != null) {
      switch (lang) {
        case "zh_TW":
          return SynchronousFuture<S>(const $zh_TW());
        case "en":
          return SynchronousFuture<S>(const $en());
        default:
          // NO-OP.
      }
    }
    return SynchronousFuture<S>(const S());
  }

  @override
  bool isSupported(Locale locale) =>
    locale != null && supportedLocales.contains(locale);

  @override
  bool shouldReload(GeneratedLocalizationsDelegate old) => false;
}

String getLang(Locale l) => l == null
  ? null
  : l.countryCode != null && l.countryCode.isEmpty
    ? l.languageCode
    : l.toString();
