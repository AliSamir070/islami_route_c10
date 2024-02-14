import 'package:flutter/material.dart';
import 'package:islamy_app_c10/style/app_theme.dart';
import 'package:islamy_app_c10/ui/hadeth_details/hadeth_details_screen.dart';
import 'package:islamy_app_c10/ui/home/home_screen.dart';
import 'package:islamy_app_c10/ui/quran_details/quran_details_screen.dart';

void main() {
  print("Hello");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: AppTheme.isDark?ThemeMode.dark:ThemeMode.light,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
        QuranDetailsScreen.routeName:(_)=>QuranDetailsScreen(),
        HadethDetailsScreen.routeName:(_)=>HadethDetailsScreen()
      },
    );
  }
}

