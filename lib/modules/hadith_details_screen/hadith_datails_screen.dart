import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/shared/components/background_image_app.dart';

import '../hadith_details/hadith_details.dart';

class HadithDetailsScreen extends StatelessWidget {
  static const String routeName = 'HadithDetailsScreen';

  @override
  Widget build(BuildContext context) {
    return BackgroundImageApp(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.titleAppBar,
          ),
        ),
        body: HadithDetailsComponent(),
      ),
    );
  }
}
