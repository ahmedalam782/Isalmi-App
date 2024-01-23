import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../models/sura_details_args.dart';

class SuraDetailsComponent extends StatefulWidget {
  @override
  State<SuraDetailsComponent> createState() => _SuraDetailsComponentState();
}

class _SuraDetailsComponentState extends State<SuraDetailsComponent> {
  List<String> chapterContent = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (chapterContent.isEmpty) {
      readFiles(args.index);
    }
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'سورة ${args.title}',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              IconButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).dividerTheme.color),
                ),
                icon: Icon(
                  Icons.play_arrow,
                  color: Theme.of(context).appBarTheme.titleTextStyle?.color,
                ),
                onPressed: () {
                  // player.play(AssetSource('sounds/${(args.index+1)}.mp3'));
                },
              ),
              SizedBox(
                width: 20,
              ),
              IconButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).dividerTheme.color),
                ),
                icon: Icon(
                  Icons.pause,
                  color: Theme.of(context).appBarTheme.titleTextStyle?.color,
                ),
                onPressed: () {
                  // player.stop();
                },
              )
            ],
          ),
          Divider(
            color: Theme.of(context).dividerTheme.color,
            thickness: 2,
          ),
          Expanded(
            child: ConditionalBuilder(
              condition: chapterContent.isNotEmpty,
              builder: (context) => ListView.separated(
                itemBuilder: (_, index) => Text(
                  chapterContent[index],
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                separatorBuilder: (_, index) => Divider(
                  color: Theme.of(context).dividerTheme.color,
                  thickness: 0,
                ),
                itemCount: chapterContent.length,
              ),
              fallback: (context) => Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void readFiles(int chapterIndex) async {
    String text = await rootBundle
        .loadString('assets/files/quran/${chapterIndex + 1}.txt');
    chapterContent = text.split('\n');
    setState(() {});
  }
}
