import 'package:flutter/material.dart';

class AppTheme {
  static bool isDark = true;
  static Color lightPrimary = const Color(0xffB7935F);
  static Color darkPrimary = const Color(0xff141A2E);
  static Color darkSecondary = const Color(0xffFACC1D);

  static ThemeData lightTheme = ThemeData(
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(size: 32),
        unselectedIconTheme: IconThemeData(size: 20)),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold)),
    colorScheme: ColorScheme.fromSeed(
      seedColor: lightPrimary,
      primary: lightPrimary,
      secondary: const Color(0xffB7935F).withOpacity(0.57),
      onPrimary: Colors.white,
      onSecondary: Colors.black,
    ),
    bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.white),
    cardTheme: const CardTheme(
      color: Colors.white,
      surfaceTintColor: Colors.transparent,
      margin: EdgeInsets.all(20),
      elevation: 20,
    ),
    dividerColor: lightPrimary,
    textTheme: TextTheme(
        titleLarge: const TextStyle(
            fontSize: 25, fontWeight: FontWeight.w600, color: Colors.black),
        labelMedium: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        bodyMedium: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.w400, fontSize: 20),
        labelSmall: const TextStyle(fontSize: 16, color: Colors.black),
        labelLarge: TextStyle(fontSize: 20, color: lightPrimary)),
    useMaterial3: true,
  );

  static ThemeData darkTheme = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: darkSecondary,
      unselectedItemColor: Colors.white,
      selectedIconTheme: const IconThemeData(size: 32),
      unselectedIconTheme: const IconThemeData(size: 20),
    ),
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: darkPrimary),
    cardTheme: CardTheme(
        color: darkPrimary,
        margin: const EdgeInsets.all(20),
        elevation: 20,
        surfaceTintColor: Colors.transparent),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(
            fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold)),
    colorScheme: ColorScheme.fromSeed(
      seedColor: darkSecondary,
      primary: darkPrimary,
      secondary: darkSecondary,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
    ),
    dividerColor: darkSecondary,
    textTheme: TextTheme(
      titleLarge: const TextStyle(
          fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),
      labelMedium: const TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
      bodyMedium: TextStyle(
          color: darkSecondary, fontWeight: FontWeight.w400, fontSize: 20),
      labelSmall: const TextStyle(fontSize: 16, color: Colors.white),
      labelLarge: TextStyle(
        fontSize: 20,
        color: darkSecondary,
      ),
    ),
    useMaterial3: true,
  );
}
