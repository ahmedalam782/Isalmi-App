import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/shared/components/background_image_app.dart';
import 'package:islami_app/shared/components/quran_components/sura_details/component_sura_details.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = 'SuraDetailsScreen';

  @override
  Widget build(BuildContext context) {
    return BackgroundImageApp(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.titleAppBar,
          ),
        ),
        body: SuraDetailsComponent(),
      ),
    );
  }
}
