import 'package:flutter/material.dart';
import 'package:islami_app_full/constant/settings_provider.dart';
import 'package:islami_app_full/ui/features/hadeth/hadethview.dart';
import 'package:islami_app_full/ui/features/quran/quranview.dart';
import 'package:islami_app_full/ui/features/radio/radioview.dart';
import 'package:islami_app_full/ui/features/settings/settings_view.dart';
import 'package:islami_app_full/ui/features/tasbeeh/tasbeehview.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

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
    RadioView(),
    SettingsView()
  ];

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingsProvider>(context);
    var locale = AppLocalizations.of(context)!;

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(vm.getbackground()), fit: BoxFit.cover)),
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
                  label: locale.quran),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
                  label: locale.hadith),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha_blue.png")),
                  label: locale.tasbih),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/radio.png")),
                  label: locale.radio),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                  ),
                  label: locale.settings)
            ]),
        appBar: AppBar(
          title: Text(
            locale.islami,
          ),
        ),
        body: screens[currentnavindex],
      ),
    );
  }
}
