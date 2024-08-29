import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_app_full/constant/settings_provider.dart';
import 'package:islami_app_full/ui/features/quran/quranview.dart';
import 'package:provider/provider.dart';

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
    var vm = Provider.of<SettingsProvider>(context);
    var theme = Theme.of(context);
    var mediaquery = MediaQuery.of(context).size;
    var args = ModalRoute.of(context)?.settings.arguments as SuraDataDetails;

    loaddata(args.suranumber);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(vm.getbackground()), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.suraname,
            style:
                TextStyle(color: vm.isdark ? Color(0xffFACC1D) : Colors.black),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          width: mediaquery.width,
          height: mediaquery.height * 0.75,
          decoration: BoxDecoration(
              color: vm.isdark ? Color(0xff141A2E) : Colors.white,
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "سورة ${args.suraname}",
                    style: vm.isdark
                        ? theme.textTheme.bodyMedium
                            ?.copyWith(color: Color(0xffFACC1D))
                        : theme.textTheme.bodyMedium
                            ?.copyWith(color: Colors.black),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(
                    Icons.play_circle_rounded,
                    size: 26,
                    color: vm.isdark ? Color(0xffFACC1D) : Colors.black,
                  ),
                ],
              ),
              Divider(
                thickness: 1.75,
                indent: 60,
                endIndent: 60,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    "{${index + 1}}${verseslist[index]}",
                    textAlign: TextAlign.center,
                    style: vm.isdark
                        ? theme.textTheme.bodyMedium
                            ?.copyWith(height: 1.5, color: Color(0xffFACC1D))
                        : theme.textTheme.bodyMedium
                            ?.copyWith(height: 1.5, color: Colors.black),
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
