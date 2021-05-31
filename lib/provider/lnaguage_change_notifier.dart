import 'package:flutter/material.dart';
import 'package:flutter_localization/utils/shared_predrences/shared_prefrences.dart';

class LanguageChangeProvider with ChangeNotifier {
  Locale _currentLocale = new Locale(AppPreference().language);

  Locale getLanguage() {
    return Locale("en");
  }

  Locale get currentLocale => _currentLocale;

  void changeLocale(String _locale) {
    this._currentLocale = new Locale(_locale);
    notifyListeners();
  }
}
