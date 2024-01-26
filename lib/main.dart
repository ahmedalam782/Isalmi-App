import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami_app/layout/home_screen.dart';
import 'package:islami_app/layout/splash_screen.dart';
import 'package:islami_app/modules/cubit/cubit.dart';
import 'package:islami_app/modules/cubit/states.dart';
import 'package:islami_app/shared/bloc_observer/bloc_observer.dart';
import 'package:islami_app/shared/components/theme_app.dart';
import 'package:islami_app/shared/network/local/cache_helper.dart';

import 'modules/hadith_details_screen/hadith_datails_screen.dart';
import 'modules/sura_details_screen/sura_datails_sreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const SimpleBlocObserver();
  await CashHelper.init();
  bool? isDark = CashHelper.getData(key: 'isDark');
  runApp(IslamiApp(
    isDark: isDark,
  ));
}

class IslamiApp extends StatelessWidget {
  final bool? isDark;

  IslamiApp({required this.isDark});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IslamiAppCubit()..changeAppMode(forShared: isDark),
      child: BlocConsumer<IslamiAppCubit, IslamiAppState>(
        listener: (context, state) {},
        builder: (context, state) {
          IslamiAppCubit cubit = IslamiAppCubit().get(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: {
              SplashScreen.routeName: (_) => const SplashScreen(),
              HomeScreen.routeName: (_) => HomeScreen(),
              SuraDetailsScreen.routeName: (_) => SuraDetailsScreen(),
              HadithDetailsScreen.routeName: (_) => HadithDetailsScreen(),
            },
            initialRoute: SplashScreen.routeName,
            theme: ThemeDataApp.lightTheme,
            darkTheme: ThemeDataApp.darkTheme,
            themeMode: cubit.isDark ? ThemeMode.dark : ThemeMode.light,
          );
        },
      ),
    );
  }
}
