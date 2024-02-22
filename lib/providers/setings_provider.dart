import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// observable
// subject
// publisher
class SettingsProvider extends ChangeNotifier{
  ThemeMode theme = ThemeMode.light;

  Future<void> changeTheme(ThemeMode newTheme) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if(theme == newTheme) return;
    if(newTheme==ThemeMode.dark){
      prefs.setBool("theme", true);
    }else{
      prefs.setBool("theme", false);
    }

    theme = newTheme;
    notifyListeners();
  }
  Future<void> init() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    language=  prefs.getString('language')??"en";
    theme=prefs.getBool('theme')==true?ThemeMode.dark:ThemeMode.light;
  }

  String language = "en";

  Future<void> changeLanguage(String newLanguage) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if(language == newLanguage) return;
    prefs.setString("language", newLanguage);
    language = newLanguage;
    notifyListeners();
  }
}