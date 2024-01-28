import 'package:flutter/material.dart';
import 'package:islami_app/models/hadith_details_args.dart';

import '../../../modules/hadith_details_screen/hadith_datails_screen.dart';

class HadithWidget extends StatelessWidget {
  final List<String> names;
  final int index;

  const HadithWidget({super.key, required this.names, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        HadithDetailsScreen.routeName,
        arguments: HadithDetailsArgs(title: names[index], index: index),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            '${names[index]}',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
      ),
    );
  }
}
