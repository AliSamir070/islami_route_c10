import 'package:flutter/material.dart';

class AppTheme {
  static bool isdark = true;
  static Color lightPrimary = Color(0xffB7935F);
  static Color darkPrimary = Color(0xff141A2E);

  static ThemeData lightTheme = ThemeData(

    cardTheme: CardTheme(
      color: Colors.white,
      surfaceTintColor: Colors.transparent,
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightPrimary,
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
        iconTheme: IconThemeData(
            color: Colors.black
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold
        )
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color(0xffB7935F),
      primary: Color(0xffB7935F),
      secondary: Color(0xffB7935F).withOpacity(0.57),
      onPrimary: Colors.white,
      onSecondary: Colors.black,

    ),
    dividerColor: Color(0xffB7935F),
    textTheme: TextTheme(
      labelSmall: TextStyle(
        color: Colors.black,
        fontSize: 25,
      ),
      bodyMedium: TextStyle(
        fontSize: 20,
        color: Colors.black,
      ),
    ),

    bottomSheetTheme: BottomSheetThemeData(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white
    ),

    useMaterial3: true,
  );


  static ThemeData darkTheme = ThemeData(

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: darkPrimary,
        selectedItemColor: Color(0xffFACC1D),
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
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold
        )
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color(0xffB7935F),
      primary: darkPrimary,

      secondary: Color(0xffB7935F).withOpacity(0.57),
      onPrimary: Colors.black,
      onSecondary: Colors.white,


    ),


    dividerColor: Color(0xffFACC1D),

    textTheme: TextTheme(
      labelSmall: TextStyle(
        color: Colors.white,
        fontSize: 25,
      ),
      bodyMedium: TextStyle(
        fontSize: 20,
        color: Color(0xffFACC1D),
      ),
    ),


    cardTheme: CardTheme(
      color: darkPrimary,
      surfaceTintColor: Colors.transparent,
    ),

    bottomSheetTheme: BottomSheetThemeData(
        surfaceTintColor: Colors.transparent,
        backgroundColor: darkPrimary
    ),


    useMaterial3: true,
  );
}
