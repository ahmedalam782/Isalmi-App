import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami_app/layout/home_screen.dart';
import 'package:islami_app/modules/cubit/cubit.dart';
import 'package:islami_app/modules/cubit/states.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'SplashScreen';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(context, HomeScreen.routeName),
    );
    return BlocConsumer<IslamiAppCubit, IslamiAppState>(
        listener: (context, state) {},
        builder: (context, state) {
          IslamiAppCubit cubit = IslamiAppCubit().get(context);
          return Scaffold(
            body: Center(
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Theme.of(context).cardTheme.surfaceTintColor,
                width: double.maxFinite,
                height: double.maxFinite,
                child: Image.asset(
                  cubit.isDark
                      ? 'assets/images/splash_dark.png'
                      : 'assets/images/splash_image.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          );
        });
  }
}
