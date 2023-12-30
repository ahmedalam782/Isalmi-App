import 'package:flutter/material.dart';
import 'package:islami_app/shared/components/constant.dart';

import '../../shared/components/hadith_components/hadith_widget.dart';

class HadithScreen extends StatelessWidget {
  static const String routeName = 'HadithScreen';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/hadeth_logo.png'),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 2,
        ),
        Center(
          child: Text(
            'الأحاديث',
            style: TextStyle(
                fontFamily: 'El Messiri',
                fontSize: 25,
                color: Color(0xff242424)),
          ),
        ),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 2,
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (_, index) => HadithWidget(
                    names: namesOfHadith,
                    index: index,
                  ),
              separatorBuilder: (_, index) => Divider(
                    color: Theme.of(context).primaryColor,
                    thickness: 2,
                  ),
              itemCount: namesOfHadith.length),
        ),
      ],
    );
  }
}
