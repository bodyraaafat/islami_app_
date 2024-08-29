import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  var currentLanguage = "en";
  changeLanguage(String newlanguage) {
    if (currentLanguage == newlanguage) return;
    currentLanguage = newlanguage;
    notifyListeners();
  }

  ThemeMode currenttheme = ThemeMode.dark;
  changetheme(ThemeMode newtheme) {
    if (currenttheme == newtheme) return;
    currenttheme = newtheme;
    notifyListeners();
  }

  String getbackground() {
    return currenttheme != ThemeMode.dark
        ? "assets/images/main_background.png"
        : "assets/images/dark_bg.png";
  }

  bool get isdark => currenttheme == ThemeMode.dark;
}
