import 'package:flutter/material.dart';
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
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xffB7935F),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(
            size: 32
          ),
          unselectedIconTheme: IconThemeData(
            size: 20
          )
        ),
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold
          )
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffB7935F),
          primary: Color(0xffB7935F),
          secondary:Color(0xffB7935F).withOpacity(0.57),
          onPrimary: Colors.white,
          onSecondary: Colors.black,

        ),

        useMaterial3: true,
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
        QuranDetailsScreen.routeName:(_)=>QuranDetailsScreen(),
        HadethDetailsScreen.routeName:(_)=>HadethDetailsScreen()
      },
    );
  }
}

