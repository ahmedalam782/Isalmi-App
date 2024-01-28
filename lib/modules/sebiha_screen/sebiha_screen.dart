import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/modules/cubit/cubit.dart';
import 'package:islami_app/modules/cubit/states.dart';
import 'package:islami_app/shared/components/constant.dart';

class SebihaScreen extends StatelessWidget {
  static const String routeName = 'SebihaScreen';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<IslamiAppCubit, IslamiAppState>(
      listener: (context, state) {},
      builder: (context, state) {
        IslamiAppCubit cubit = IslamiAppCubit().get(context);
        return Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset(
                  cubit.isDark
                      ? 'assets/images/head_sebha_dark.png'
                      : 'assets/images/head_sebha_logo.png',
                ),
                GestureDetector(
                  onTap: () => cubit.changeCountSebihaAndRotate(),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width * .19,
                    ),
                    child: Transform.rotate(
                      angle: cubit.angle,
                      child: Image.asset(
                        cubit.isDark
                            ? 'assets/images/body_sebha_dark.png'
                            : 'assets/images/body_sebha_logo.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                AppLocalizations.of(context)!.numberOfPraises,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).primaryColor,
              ),
              child: Text(
                '${cubit.count}',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).dividerTheme.color,
              ),
              child: Text('${namesOfSebiha[cubit.currentIndex]}',
                  style: Theme.of(context).textTheme.titleMedium),
            ),
          ],
        );
      },
    );
  }
}
