
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

class SettingProvider extends ChangeNotifier{

  ThemeMode theme=ThemeMode.dark;




  Future<void> changeTheme(ThemeMode newThemeMode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(theme==newThemeMode)return;
    if (newThemeMode==ThemeMode.dark){
      prefs.setBool("theme",true);
    }else{
      prefs.setBool("theme",false);
    }


    theme=newThemeMode;


    notifyListeners();
  }

  String language='en';
  Future<void> init() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    language = prefs.getString("language")??"en" ;
    theme= prefs.getBool("theme")==true?ThemeMode.dark:ThemeMode.light;
    notifyListeners();
  }

  Future<void> changeLnaguage(String newLnaguage) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if(language == newLnaguage)return;

    language= newLnaguage;
    prefs.setString('language',language);



    notifyListeners();
  }

}