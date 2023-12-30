import 'package:flutter/material.dart';
import 'package:islami_app/layout/home_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'SplashScreen';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(context, HomeScreen.routeName),
    );
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          color: const Color(0xffF8F8F8),
          width: double.maxFinite,
          height: double.maxFinite,
          child: Image.asset(
            'assets/images/splash_image.png',
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
