import 'package:flutter/material.dart';
import 'package:islami_app/shared/components/constant.dart';

class SebihaScreen extends StatefulWidget {
  static const String routeName = 'SebihaScreen';

  @override
  State<SebihaScreen> createState() => _SebihaScreenState();
}

class _SebihaScreenState extends State<SebihaScreen> {
  int currentIndex = 0;

  int count = 0;
  double angle = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset('assets/images/head_sebha_logo.png'),
            GestureDetector(
              onTap: () => onTasbehTab(),
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * .19,
                ),
                child: Transform.rotate(
                  angle: angle,
                  child: Image.asset('assets/images/body_sebha_logo.png'),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            'عدد التسبيحات',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).primaryColor,
          ),
          child: Text(
            '$count',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).dividerTheme.color,
          ),
          child: Text(
            '${namesOfSebiha[currentIndex]}',
              style: Theme.of(context).textTheme.titleMedium),
        ),
      ],
    );
  }

  void onTasbehTab() {
    count++;
    if (count % 33 == 0) {
      currentIndex++;
    }
    angle += 360 / 33;
    if (currentIndex == namesOfSebiha.length) {
      currentIndex = 0;
      count = 0;
      angle = 0;
    }

    setState(() {});
  }
}
