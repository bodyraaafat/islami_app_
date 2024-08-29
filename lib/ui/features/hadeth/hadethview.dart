import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_full/constant/settings_provider.dart';
import 'package:provider/provider.dart';

import 'hadethdetailsview.dart';

class HadethView extends StatefulWidget {
  const HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethData> allHadethContent = [];
  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingsProvider>(context);
    var theme = Theme.of(context);
    var mediaquery = MediaQuery.of(context).size;
    if (allHadethContent.isEmpty) loaddata();
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "assets/images/hadeth_header.png",
            width: mediaquery.width,
            height: mediaquery.height * 0.2,
          ),
          Divider(
            thickness: 2,
          ),
          Text(
            "الأحاديث",
            style: vm.isdark
                ? theme.textTheme.titleLarge?.copyWith(color: Colors.white)
                : theme.textTheme.titleLarge?.copyWith(color: Colors.black),
          ),
          Divider(
            thickness: 2,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    HadethDetailsView.routename,
                    arguments: allHadethContent[index],
                  );
                },
                child: Text(allHadethContent[index].title,
                    textAlign: TextAlign.center,
                    style: vm.isdark
                        ? theme.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w400, color: Colors.white)
                        : theme.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w400, color: Colors.black)),
              ),
              itemCount: allHadethContent.length,
            ),
          )
        ],
      ),
    );
  }

  Future<void> loaddata() async {
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadethList = content.split("#");

    for (int i = 0; i < allHadethList.length; i++) {
      String singleHadeth = allHadethList[i].trim();

      int titleIndex = singleHadeth.indexOf("\n");

      String title = singleHadeth.substring(0, titleIndex);
      String content = singleHadeth.substring(titleIndex + 1);

      HadethData hadethData = HadethData(
        title,
        content,
      );
      allHadethContent.add(hadethData);
    }
    setState(() {});
  }
}

class HadethData {
  final String title;
  final String content;

  HadethData(this.title, this.content);
}
