import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// observable
// subject
// publisher
class SettingsProvider extends ChangeNotifier{
  ThemeMode theme = ThemeMode.light;

  Future<void>changeTheme(ThemeMode newTheme)async{
    if(theme == newTheme) return;
    theme = newTheme;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("theme", theme.name);
    notifyListeners();
  }

  String language = "en";

  Future <void> changeLanguage(String newLanguage)async{
    if(language == newLanguage) return;
    language = newLanguage;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("language", language);
    notifyListeners();
  }
  Future<void> theNewState()async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? mode = prefs.getString("theme");
    String? lang = prefs.getString("language");
    mode??= "light";
    theme = (mode =="dark"?ThemeMode.dark:ThemeMode.light);
    lang??= "en";
    language = lang;
    notifyListeners();
  }
}