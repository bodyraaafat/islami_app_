import 'package:flutter/material.dart';
import 'package:islami_app_full/ui/features/hadeth/hadethview.dart';
import 'package:islami_app_full/ui/features/quran/quranview.dart';
import 'package:islami_app_full/ui/features/radio/radioview.dart';
import 'package:islami_app_full/ui/features/tasbeeh/tasbeehview.dart';

class HomeView extends StatefulWidget {
  static const routename = "homeview";

  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentnavindex = 0;
  List<Widget> screens = [
    QuranView(),
    HadethView(),
    TasbeehView(),
    RadioView()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main_background.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentnavindex,
            onTap: (value) {
              setState(() {
                currentnavindex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/quran_icn.png")),
                  label: "Quran"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
                  label: "Hadeeth"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha_blue.png")),
                  label: "Tasbeh"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/radio.png")),
                  label: "Radio"),
            ]),
        appBar: AppBar(
          title: Text(
            "إسلامي",
          ),
        ),
        body: screens[currentnavindex],
      ),
    );
  }
}
