import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier{

  ThemeMode appThemeMode = ThemeMode.light;


  void changeTheme (ThemeMode themeMode){
    appThemeMode = themeMode;
    notifyListeners();
  }


  String languageCode = 'en';

  void changeLanguage (String language){
    languageCode = language;
    notifyListeners();
  }

  bool languageSelector = true;

  void changeLanguageSelector (){
    languageSelector = !languageSelector;
    notifyListeners();
  }

  bool themeSelector = true;

  void changeThemeSelector (){
    themeSelector = !themeSelector;
    notifyListeners();
  }

}