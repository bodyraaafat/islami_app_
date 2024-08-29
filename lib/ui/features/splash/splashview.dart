import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app_full/constant/settings_provider.dart';
import 'package:islami_app_full/ui/features/home/homeview.dart';
import 'package:provider/provider.dart';

class SplashView extends StatefulWidget {
  static const routename = "/";
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomeView.routename);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingsProvider>(context);
    Size mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      body: Image.asset(
        width: mediaquery.width,
        height: mediaquery.height,
        vm.currenttheme == ThemeMode.dark
            ? "assets/images/dark_splash.png"
            : "assets/images/splash.png",
        fit: BoxFit.fill,
      ),
    );
  }
}
