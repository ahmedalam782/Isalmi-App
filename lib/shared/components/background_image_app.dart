import 'package:flutter/material.dart';
import 'package:islami_app/modules/cubit/cubit.dart';

class BackgroundImageApp extends StatelessWidget {
  final Widget child;

  BackgroundImageApp({required this.child});

  @override
  Widget build(BuildContext context) {
    IslamiAppCubit cubit = IslamiAppCubit().get(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            cubit.isDark
                ? 'assets/images/dark_bg.png'
                : 'assets/images/default_bg.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: child,
    );
  }
}
