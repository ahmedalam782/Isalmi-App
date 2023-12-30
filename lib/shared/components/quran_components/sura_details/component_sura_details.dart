import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../models/sura_details_args.dart';
import '../../constant.dart';

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
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'سورة ${args.title}',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Monotype Koufi'),
              ),
              SizedBox(
                width: 20,
              ),
              IconButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                ),
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
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
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                ),
                icon: Icon(
                  Icons.pause,
                  color: Colors.white,
                ),
                onPressed: () {
                  // player.stop();
                },
              )
            ],
          ),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 2,
          ),
          Expanded(
            child: chapterContent.isEmpty
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.separated(
                    itemBuilder: (_, index) => Text(
                      chapterContent[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'DecoType Thuluth',
                      ),
                    ),
                    separatorBuilder: (_, index) => Divider(
                      color: Theme.of(context).primaryColor,
                      thickness: 0,
                    ),
                    itemCount: chapterContent.length,
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
