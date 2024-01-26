import 'package:flutter/material.dart';

class RadioScreen extends StatelessWidget {
  static const String routeName = 'RadioScreen';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/radio_image.png'),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            'إذاعة القرآن الكريم',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.skip_previous,
                size: 40,
                color: Theme.of(context).dividerTheme.color,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.play_arrow,
                size: 50,
                color: Theme.of(context).dividerTheme.color,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.skip_next,
                size: 40,
                color: Theme.of(context).dividerTheme.color,
              ),
            )
          ],
        )
      ],
    );
  }
}
