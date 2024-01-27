import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami_app/modules/cubit/states.dart';
import 'package:islami_app/modules/setting_screen/setting_screen.dart';

import '../../shared/components/constant.dart';
import '../../shared/network/local/cache_helper.dart';
import '../hadith_screen/hadith_screen.dart';
import '../quran_screen/quran_screen.dart';
import '../radio_screen/radio_screen.dart';
import '../sebiha_screen/sebiha_screen.dart';

class IslamiAppCubit extends Cubit<IslamiAppState> {
  IslamiAppCubit() : super(IslamiAppInitialState());

  IslamiAppCubit get(context) => BlocProvider.of(context);

  int selectedTabIndex = 0;

  List<Widget> tabsScreen = [
    QuranScreen(),
    HadithScreen(),
    SebihaScreen(),
    RadioScreen(),
    SettingScreen()
  ];

  void changeIndexBottomNarBar(int index) {
    selectedTabIndex = index;
    emit(IslamiAppChangeBottomNavState());
  }

  bool isDark = false;

  void changeAppMode({bool? forShared}) {
    if (forShared != null) {
      isDark = forShared;
    } else {
      isDark = !isDark;
      CashHelper.putData(key: 'isDark', value: isDark)
          .then((value) => emit(IslamiAppChangeModeState()));
    }
  }

  bool isLanguage = false;

  void changeAppLanguage({bool? forShared}) {
    if (forShared != null) {
      isLanguage = forShared;
    } else {
      isLanguage = !isLanguage;
      CashHelper.putData(key: 'isLanguage', value: isLanguage)
          .then((value) => emit(IslamiAppChangeModeState()));
    }
  }

  // sebiha screen change state
  int currentIndex = 0;
  int count = 0;
  double angle = 0;

  void changeCountSebihaAndRotate() {
    count++;
    if (count % 33 == 0) {
      currentIndex++;
    }
    angle += 360 / 33;
    if (currentIndex == namesOfSebiha.length) {
      currentIndex = 0;
      count = 0;
      angle = 0;
    }
    emit(IslamiAppChangeCountSebihaAndRotateState());
  }
}
