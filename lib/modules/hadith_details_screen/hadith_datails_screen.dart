import 'package:flutter/material.dart';
import 'package:islami_app/shared/components/background_image_app.dart';
import 'package:islami_app/shared/components/constant.dart';

import '../hadith_details/hadith_details.dart';

class HadithDetailsScreen extends StatelessWidget {
  static const String routeName = 'HadithDetailsScreen';

  @override
  Widget build(BuildContext context) {
    return BackgroundImageApp(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            titleAppBar,
          ),
        ),
        body: HadithDetailsComponent(),
      ),
    );
  }
}
