import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app_full/constant/settings_provider.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatelessWidget {
  static const String routename = "settings";
  List<String> languagelist = ["English", "عربي"];
  List<String> thememode = ["Dark", "Light"];
  SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingsProvider>(context);
    var theme = Theme.of(context);
    var locale = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            locale.language,
            style: vm.isdark
                ? theme.textTheme.titleLarge?.copyWith(color: Colors.white)
                : theme.textTheme.titleLarge?.copyWith(color: Colors.black),
          ),
          SizedBox(
            height: 19,
          ),
          CustomDropdown<String>(
            decoration: CustomDropdownDecoration(
                closedSuffixIcon: Icon(
                  Icons.arrow_drop_down_rounded,
                  color: vm.isdark ? Colors.white : Colors.black,
                  size: 30,
                ),
                expandedSuffixIcon: Icon(
                  Icons.arrow_drop_up_rounded,
                  color: vm.isdark ? Colors.white : Colors.black,
                  size: 30,
                ),
                listItemStyle: TextStyle(
                    color: vm.isdark ? Colors.white : Colors.black,
                    fontSize: 19),
                headerStyle: TextStyle(
                    color: vm.isdark ? Colors.white : Colors.black,
                    fontSize: 19),
                expandedFillColor:
                    vm.isdark ? const Color(0xff141A2E) : Colors.white,
                closedFillColor:
                    vm.isdark ? const Color(0xff141A2E) : Colors.white),
            initialItem: vm.currentLanguage == "en" ? "English" : "عربي",
            items: languagelist,
            onChanged: (value) {
              if (value == "English") {
                vm.changeLanguage("en");
              } else if (value == "عربي") {
                vm.changeLanguage("ar");
              }
            },
          ),
          SizedBox(height: 40),
          Text(
            locale.theme,
            style: vm.isdark
                ? theme.textTheme.titleLarge?.copyWith(color: Colors.white)
                : theme.textTheme.titleLarge?.copyWith(color: Colors.black),
          ),
          SizedBox(
            height: 25,
          ),
          CustomDropdown(
            decoration: CustomDropdownDecoration(
                closedSuffixIcon: Icon(
                  Icons.arrow_drop_down_rounded,
                  color: vm.isdark ? Colors.white : Colors.black,
                  size: 30,
                ),
                expandedSuffixIcon: Icon(
                  Icons.arrow_drop_up_rounded,
                  color: vm.isdark ? Colors.white : Colors.black,
                  size: 30,
                ),
                listItemStyle: TextStyle(
                    color: vm.isdark ? Colors.white : Colors.black,
                    fontSize: 19),
                headerStyle: TextStyle(
                    color: vm.isdark ? Colors.white : Colors.black,
                    fontSize: 19),
                expandedFillColor:
                    vm.isdark ? const Color(0xff141A2E) : Colors.white,
                closedFillColor:
                    vm.isdark ? const Color(0xff141A2E) : Colors.white),
            initialItem: vm.currenttheme == ThemeMode.dark ? "Dark" : "Light",
            items: thememode,
            onChanged: (value) {
              if (value == "Dark") {
                vm.changetheme(ThemeMode.dark);
              } else if (value == "Light") {
                vm.changetheme(ThemeMode.light);
              }
            },
          ),
        ],
      ),
    );
  }
}
