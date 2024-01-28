import 'package:flutter/material.dart';

class ThemeDataApp {
  static const Color lightPrimaryColor = Color(0xffB7935F);
  static const Color darkPrimaryColor = Color(0xff161E36);
  static const Color lightAppBarText = Color(0xff242424);
  static const Color darkAppBarText = Color(0xffF8F8F8);
  static const Color darkDivider = Color(0xffFACC1D);
  static ThemeData lightTheme = ThemeData(
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: lightPrimaryColor,
    ),
    primaryColor: lightPrimaryColor,
    dividerTheme: DividerThemeData(
      color: lightPrimaryColor,
    ),
    cardTheme: CardTheme(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 20,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: lightAppBarText,
      ),
      color: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: lightAppBarText,
        fontFamily: 'El Messiri',
      ),
      centerTitle: true,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: lightAppBarText,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(
        color: lightAppBarText,
      ),
      selectedLabelStyle: TextStyle(
        fontSize: 14,
        fontFamily: 'JF Flat',
        color: lightAppBarText,
      ),
    ),
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontFamily: 'El Messiri',
        fontSize: 25,
        color: lightAppBarText,
      ),
      bodyLarge: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        fontFamily: 'Monotype Koufi',
        color: lightAppBarText,
      ),
      bodyMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'DecoType Thuluth',
        color: lightAppBarText,
      ),
      titleMedium: TextStyle(
        fontFamily: 'JF Flat',
        fontSize: 25,
        color: darkAppBarText,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: darkDivider,
    ),
    primaryColor: darkPrimaryColor,
    dividerTheme: DividerThemeData(
      color: darkDivider,
    ),
    cardTheme: CardTheme(
      color: darkPrimaryColor,
      surfaceTintColor: darkPrimaryColor,
      elevation: 20,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: darkAppBarText,
      ),
      color: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: darkAppBarText,
        fontFamily: 'El Messiri',
      ),
      centerTitle: true,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: darkDivider,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(color: darkDivider),
      selectedLabelStyle: TextStyle(
        fontSize: 14,
        fontFamily: 'JF Flat',
        color: darkDivider,
      ),
    ),
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontFamily: 'El Messiri',
        fontSize: 25,
        color: darkAppBarText,
      ),
      bodyLarge: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        fontFamily: 'Monotype Koufi',
        color: darkDivider,
      ),
      bodyMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'DecoType Thuluth',
        color: darkDivider,
      ),
      titleMedium: TextStyle(
        fontFamily: 'JF Flat',
        fontSize: 25,
        color: lightAppBarText,
      ),
    ),
  );
}
