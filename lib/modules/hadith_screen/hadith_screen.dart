import 'package:flutter/material.dart';
import 'package:islami_app/shared/components/constant.dart';

import '../../shared/components/hadith_components/hadith_widget.dart';

class HadithScreen extends StatelessWidget {
  static const String routeName = 'HadithScreen';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Image.asset('assets/images/hadeth_logo.png'),
        ),
        Divider(
          color: Theme.of(context).dividerTheme.color,
          thickness: 2,
        ),
        Center(
          child: Text(
            'الأحاديث',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        Divider(
          color: Theme.of(context).dividerTheme.color,
          thickness: 2,
        ),
        Expanded(
          flex: 3,
          child: ListView.separated(
              itemBuilder: (_, index) => HadithWidget(
                    names: namesOfHadith,
                    index: index,
                  ),
              separatorBuilder: (_, index) => Divider(
                color: Theme.of(context).dividerTheme.color,
                    thickness: 2,
                  ),
              itemCount: namesOfHadith.length),
        ),
      ],
    );
  }
}
