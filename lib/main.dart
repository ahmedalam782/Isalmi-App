import 'package:flutter/material.dart';
import 'package:islami_app/layout/home_screen.dart';
import 'package:islami_app/layout/splash_screen.dart';

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
        SplashScreen.routeName: (_) => SplashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDetailsScreen.routeName: (_) => SuraDetailsScreen(),
        HadithDetailsScreen.routeName: (_) => HadithDetailsScreen(),
      },
      initialRoute: SplashScreen.routeName,
      theme: ThemeData(
          progressIndicatorTheme: ProgressIndicatorThemeData(
            color: Color(0xffB7935F),
          ),
          primaryColor: Color(0xffB7935F),
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
            color: Colors.transparent,
            elevation: 0,
            titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Color(0xff242424),
              fontFamily: 'El Messiri',
            ),
            centerTitle: true,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedItemColor: Color(0xff242424),
              unselectedItemColor: Colors.white,
              selectedIconTheme: IconThemeData(
                color: Color(0xff242424),
              ),
              selectedLabelStyle: TextStyle(
                fontSize: 14,
                fontFamily: 'JF Flat',
                color: Color(0xff242424),
              ))),
    );
  }
}
