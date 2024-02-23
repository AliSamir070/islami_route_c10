import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// observable
// subject
// publisher
class SettingsProvider extends ChangeNotifier{
  ThemeMode theme = ThemeMode.light;

  String language = "en";

  Future<void> changeTheme(ThemeMode newTheme) async{
    if(theme == newTheme) return;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    theme = newTheme;
    prefs.setString("theme", theme.name);
    notifyListeners();
  }

  Future<void> changeLanguage(String newLanguage) async{
    if(language == newLanguage) return;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    language = newLanguage;
    prefs.setString("language", language);
    notifyListeners();
  }

  Future<void> loadSettings() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? lang = prefs.getString("language");
    String? themeMode = prefs.getString("theme");

    if(themeMode == null) themeMode = "light";
    theme = (themeMode == "dark")? ThemeMode.dark:ThemeMode.light;

    if(lang == null) lang = "ar";
    language = lang;
  }
}