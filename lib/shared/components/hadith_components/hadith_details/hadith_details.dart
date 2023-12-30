import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/models/hadith_details_args.dart';

class HadithDetailsComponent extends StatefulWidget {
  @override
  State<HadithDetailsComponent> createState() => _HadithDetailsComponentState();
}

class _HadithDetailsComponentState extends State<HadithDetailsComponent> {
  List<String> chapterContent = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadithDetailsArgs;
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
          Center(
            child: Text(
              args.title,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Monotype Koufi'),
            ),
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
                          fontSize: 20, fontFamily: 'DecoType Thuluth'),
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
        .loadString('assets/files/hadeth/h${chapterIndex + 1}.txt');
    chapterContent = text.split('\n');
    setState(() {});
  }
}
