import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_app_full/ui/features/quran/quranview.dart';

class QuranDetailsScreen extends StatefulWidget {
  static const String routename = "Qurandetails";
  const QuranDetailsScreen({super.key});

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

List<String> verseslist = [];

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaquery = MediaQuery.of(context).size;
    var args = ModalRoute.of(context)?.settings.arguments as SuraDataDetails;

    loaddata(args.suranumber);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main_background.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.suraname),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          width: mediaquery.width,
          height: mediaquery.height * 0.75,
          decoration: BoxDecoration(
              color: Color(
                0xffF8F8F8,
              ),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "سورة ${args.suraname}",
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(
                    Icons.play_circle_rounded,
                    size: 26,
                  ),
                ],
              ),
              Divider(
                color: theme.primaryColor,
                thickness: 1.75,
                indent: 60,
                endIndent: 60,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    "{${index + 1}}${verseslist[index]}",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      height: 1.5,
                    ),
                  ),
                  itemCount: verseslist.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> loaddata(String filename) async {
    String content = await rootBundle.loadString("assets/files/$filename.txt");
    verseslist = content.split('\n');
    setState(() {});
  }
}
