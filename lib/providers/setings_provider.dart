import 'package:flutter/material.dart';

// observable
// subject
// publisher
class SettingsProvider extends ChangeNotifier{
  ThemeMode theme = ThemeMode.light;

  void changeTheme(ThemeMode newTheme){
    if(theme == newTheme) return;
    theme = newTheme;
    notifyListeners();
  }

  String language = "en";

  void changeLanguage(String newLanguage){
    if(language == newLanguage) return;
    language = newLanguage;
    notifyListeners();
  }
}