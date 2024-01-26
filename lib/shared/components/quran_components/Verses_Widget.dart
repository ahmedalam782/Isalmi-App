import 'package:flutter/material.dart';
import 'package:islami_app/models/sura_details_args.dart';

import '../../../modules/sura_details_screen/sura_datails_sreen.dart';

class VersesWidget extends StatelessWidget {
  final Map names;
  final int index;

  const VersesWidget({super.key, required this.names, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        SuraDetailsScreen.routeName,
        arguments: SuraDetailsArgs(title: names['name'], index: index),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '${names['number']}',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              '${names['name']}',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      ),
    );
  }
}
