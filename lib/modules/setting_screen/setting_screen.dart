import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/modules/cubit/cubit.dart';
import 'package:islami_app/modules/cubit/states.dart';

class SettingScreen extends StatelessWidget {
  static const String routeName = 'SettingScreen';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<IslamiAppCubit, IslamiAppState>(
      listener: (context, state) {},
      builder: (context, state) {
        IslamiAppCubit cubit = IslamiAppCubit().get(context);
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.width * .19,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    cubit.isDark ? Icons.dark_mode : Icons.light_mode,
                    color: Theme.of(context).dividerTheme.color,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    AppLocalizations.of(context)!.darkMode,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Switch(
                      activeThumbImage: AssetImage(
                        'assets/images/dark_mode.png',
                      ),
                      thumbColor: MaterialStateProperty.all(
                        Theme.of(context).dividerTheme.color,
                      ),
                      inactiveThumbImage: AssetImage(
                        'assets/images/light_mode.png',
                      ),
                      inactiveTrackColor: Theme.of(context).dividerTheme.color,
                      activeTrackColor: Theme.of(context).dividerTheme.color,
                      value: cubit.isDark,
                      onChanged: (value) => cubit.changeAppMode(),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.language,
                  color: Theme.of(context).dividerTheme.color,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  AppLocalizations.of(context)!.language,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Spacer(),
                GestureDetector(
                  onTap: () => cubit.changeAppLanguage(),
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Theme.of(context).dividerTheme.color),
                    margin: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        cubit.isLanguage
                            ? AppLocalizations.of(context)!.english
                            : AppLocalizations.of(context)!.arabic,
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
