import 'package:flutter/material.dart';
import 'package:islami_app/shared/components/constant.dart';
import 'package:islami_app/shared/components/quran_components/Verses_Widget.dart';

class QuranScreen extends StatelessWidget {
  static const String routeName = 'QuranScreen';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Image.asset('assets/images/qur2an_screen_logo.png'),
        ),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'عدد الآيات',
              style: TextStyle(
                  fontFamily: 'El Messiri',
                  fontSize: 25,
                  color: Color(0xff242424)),
            ),
            Text(
              'اسم السورة',
              style: TextStyle(
                  fontFamily: 'El Messiri',
                  fontSize: 25,
                  color: Color(0xff242424)),
            ),
          ],
        ),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 2,
        ),
        Expanded(
          flex: 3,
          child: ListView.separated(
              itemBuilder: (_, index) => VersesWidget(
                    names: numbersAndNamesOfVerses[index],
                    index: index,
                  ),
              separatorBuilder: (_, index) => Divider(
                    color: Theme.of(context).primaryColor,
                    thickness: 2,
                  ),
              itemCount: numbersAndNamesOfVerses.length),
        ),
      ],
    );
  }
}
