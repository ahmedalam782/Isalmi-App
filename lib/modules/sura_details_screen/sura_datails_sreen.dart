import 'package:flutter/material.dart';
import 'package:islami_app/shared/components/constant.dart';
import 'package:islami_app/shared/components/quran_components/sura_details/component_sura_details.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = 'SuraDetailsScreen';

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
        body: SuraDetailsComponent(),
      ),
    );
  }
}
