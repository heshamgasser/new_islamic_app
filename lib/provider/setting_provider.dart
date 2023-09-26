import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingProvider extends ChangeNotifier {
  ThemeMode appThemeMode = ThemeMode.light;

  void changeTheme(ThemeMode themeMode) async {
   if (themeMode == appThemeMode) return;
    appThemeMode = themeMode;
    notifyListeners();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('theme', themeMode == ThemeMode.light ? 'light' : 'dark');
  }

  String languageCode = 'en';

  void changeLanguage(String language) async {
   if (language == languageCode) return;
    languageCode = language;
    notifyListeners();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('language', language);
  }

  void getSharedPreferences () async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String lang = prefs.getString('language') ?? 'en';
    String theme = prefs.getString('theme') ?? 'light';
    changeLanguage(lang);
    changeTheme(theme == 'light' ? ThemeMode.light : ThemeMode.dark);
    notifyListeners();
  }

  bool languageSelector = true;

  void changeLanguageSelector() {
    languageSelector = !languageSelector;
    notifyListeners();
  }

  bool themeSelector = true;

  void changeThemeSelector() {
    themeSelector = !themeSelector;
    notifyListeners();
  }
}
