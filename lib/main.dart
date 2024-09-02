import 'package:flutter/material.dart';
import 'package:islami_app_full/constant/apptheme.dart';
import 'package:islami_app_full/constant/settings_provider.dart';
import 'package:islami_app_full/ui/features/hadeth/hadethdetailsview.dart';
import 'package:islami_app_full/ui/features/home/homeview.dart';
import 'package:islami_app_full/ui/features/quran/qurandetails.dart';
import 'package:islami_app_full/ui/features/settings/settings_view.dart';
import 'package:islami_app_full/ui/features/splash/splashview.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => SettingsProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingsProvider>(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Islami App',
        theme: ApplicationthemeManager().lighttheme,
        darkTheme: ApplicationthemeManager().darkTheme,
        themeMode: vm.currenttheme,
        initialRoute: SplashView.routename,
        routes: {
          SplashView.routename: (context) => SplashView(),
          HomeView.routename: (context) => HomeView(),
          QuranDetailsScreen.routename: (context) => QuranDetailsScreen(),
          HadethDetailsView.routename: (context) => HadethDetailsView(),
          SettingsView.routename: (context) => SettingsView()
        },
        locale: Locale(vm.currentLanguage),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales);
  }
}
