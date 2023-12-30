import 'package:flutter/material.dart';
import 'package:islami_app/models/hadith_details_args.dart';

import '../../../modules/hadith_details_screen/hadith_datails_screen.dart';

class HadithWidget extends StatelessWidget {
  List<String> names;
  int index;

  HadithWidget({required this.names, required this.index});

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
            style: TextStyle(
              fontFamily: 'El Messiri',
              fontSize: 25,
              color: Color(0xff242424),
            ),
          ),
        ),
      ),
    );
  }
}
