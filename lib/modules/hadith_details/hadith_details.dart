import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
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
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                args.title,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
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
        .loadString('assets/files/hadeth/h${chapterIndex + 1}.txt');
    chapterContent = text.split('\n');
    setState(() {});
  }
}
