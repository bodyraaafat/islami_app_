import 'package:flutter/material.dart';
import 'package:islami_app_full/constant/apptheme.dart';
import 'package:islami_app_full/ui/features/hadeth/hadethdetailsview.dart';
import 'package:islami_app_full/ui/features/home/homeview.dart';
import 'package:islami_app_full/ui/features/quran/qurandetails.dart';
import 'package:islami_app_full/ui/features/splash/splashview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islami App',
      theme: ApplicationthemeManager().lighttheme,
      initialRoute: SplashView.routename,
      routes: {
        SplashView.routename: (context) => SplashView(),
        HomeView.routename: (context) => HomeView(),
        QuranDetailsScreen.routename: (context) => QuranDetailsScreen(),
        HadethDetailsView.routename: (context) => HadethDetailsView()
      },
    );
  }
}
