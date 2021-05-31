import 'package:shared_preferences/shared_preferences.dart';

class AppPreference {
  static final AppPreference _darkThemePreference = AppPreference.init();

  factory AppPreference() {
    return _darkThemePreference;
  }

  AppPreference.init();

  String _language = 'en';

  String get language => _language;

  static const LanguageKey = "Language";

  setLanguageTheme(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _language = value;
    prefs.setString(LanguageKey, value);
  }

  Future<String> getLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _language = prefs.getString(LanguageKey) ?? 'en';
    return prefs.getString(LanguageKey) ?? 'en';
  }
}
