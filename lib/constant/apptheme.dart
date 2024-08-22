import 'package:flutter/material.dart';

class ApplicationthemeManager {
  ThemeData lighttheme = ThemeData(
    canvasColor: Color(0xffB7935F),
    primaryColor: Color(0xffB7935F),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(color: Colors.black, size: 26),
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(fontSize: 20)),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontFamily: "Elmissery",
        fontWeight: FontWeight.w700,
      ),
    ),
    textTheme: TextTheme(
        titleLarge: TextStyle(
            fontFamily: "Elmissery", fontSize: 25, fontWeight: FontWeight.w600),
        bodyMedium: TextStyle(
            fontFamily: "Elmissery",
            fontSize: 25,
            fontWeight: FontWeight.w400)),
  );
}
