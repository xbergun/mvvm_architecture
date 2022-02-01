import 'package:flutter/material.dart';

class LanguageManager {

  static LanguageManager? _instance;
  static LanguageManager get instance {
    if (_instance == null) {
      _instance ?? LanguageManager._init();
    }
    return _instance!;
  }

  LanguageManager._init();

  

  List<Locale> get supportedLocales => [enLocale];

  final enLocale = Locale('en', 'US');

}
