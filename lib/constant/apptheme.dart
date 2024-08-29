import 'package:flutter/material.dart';

class ApplicationthemeManager {
  ThemeData lighttheme = ThemeData(
    dividerTheme: DividerThemeData(color: Color(0xffB7935f)),
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
  ThemeData darkTheme = ThemeData(
    dividerTheme: DividerThemeData(color: Color(0xffFACC1D)),
    canvasColor: Color(0xff141A2E),
    primaryColor: Color(0xff141A2E),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(color: Color(0xffFACC1D), size: 26),
        selectedItemColor: Color(0xffFACC1D),
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
