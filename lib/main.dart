import 'package:flutter/material.dart';
import 'package:islami_app/layout/home_screen.dart';
import 'package:islami_app/layout/splash_screen.dart';
import 'package:islami_app/shared/theme_app.dart';

import 'modules/hadith_details_screen/hadith_datails_screen.dart';
import 'modules/sura_details_screen/sura_datails_sreen.dart';

void main() {
  runApp(IslamiApp());
}

class IslamiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routeName: (_) => const SplashScreen(),
        HomeScreen.routeName: (_) => const HomeScreen(),
        SuraDetailsScreen.routeName: (_) => SuraDetailsScreen(),
        HadithDetailsScreen.routeName: (_) => HadithDetailsScreen(),
      },
      initialRoute: SplashScreen.routeName,
      theme: ThemeDataApp.lightTheme,
      darkTheme: ThemeDataApp.darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}
