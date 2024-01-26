import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami_app/modules/cubit/cubit.dart';
import 'package:islami_app/modules/cubit/states.dart';
import 'package:islami_app/shared/components/background_image_app.dart';
import 'package:islami_app/shared/components/constant.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<IslamiAppCubit, IslamiAppState>(
      listener: (context, state) {},
      builder: (context, state) {
        IslamiAppCubit cubit = IslamiAppCubit().get(context);
        return BackgroundImageApp(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: const Text(
                titleAppBar,
              ),
              actions: [
                IconButton(
                  onPressed: () => cubit.changeAppMode(),
                  icon: Icon(
                    cubit.isDark ? Icons.dark_mode : Icons.light_mode,
                  ),
                )
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.selectedTabIndex,
              onTap: (index) => cubit.changeIndexBottomNarBar(index),
              items: [
                BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(
                    AssetImage(
                      'assets/images/icon_radio.png',
                    ),
                  ),
                  label: 'الراديو',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_sebha.png'),
                  ),
                  label: 'التسبيح',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_hadeth.png'),
                  ),
                  label: 'الأحاديث',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_quran.png'),
                  ),
                  label: 'القرآن',
                ),
              ],
            ),
            body: cubit.tabsScreen[cubit.selectedTabIndex],
          ),
        );
      },
    );
  }
}
