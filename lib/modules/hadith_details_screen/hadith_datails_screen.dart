import 'package:flutter/material.dart';
import 'package:islami_app/shared/components/constant.dart';
import 'package:islami_app/shared/components/hadith_components/hadith_details/hadith_details.dart';
import '../../shared/components/quran_components/sura_details/component_sura_details.dart';

class HadithDetailsScreen extends StatelessWidget {
  static const String routeName = 'HadithDetailsScreen';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/default_bg.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
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
