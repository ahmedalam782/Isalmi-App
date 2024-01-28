import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/modules/cubit/cubit.dart';
import 'package:islami_app/modules/cubit/states.dart';
import 'package:islami_app/shared/components/background_image_app.dart';

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
              title: Text(
                AppLocalizations.of(context)!.titleAppBar,
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.selectedTabIndex,
              onTap: (index) => cubit.changeIndexBottomNarBar(index),
              items: [
                BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_quran.png'),
                  ),
                  label: AppLocalizations.of(context)!.quran,
                ),
                BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_hadeth.png'),
                  ),
                  label: AppLocalizations.of(context)!.hadiths,
                ),
                BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_sebha.png'),
                  ),
                  label: AppLocalizations.of(context)!.altasbih,
                ),
                BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(
                    AssetImage(
                      'assets/images/icon_radio.png',
                    ),
                  ),
                  label: AppLocalizations.of(context)!.radio,
                ),
                BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: Icon(
                    Icons.settings,
                  ),
                  label: AppLocalizations.of(context)!.settings,
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
