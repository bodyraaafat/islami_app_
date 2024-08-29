import 'package:flutter/material.dart';
import 'package:islami_app_full/constant/settings_provider.dart';
import 'package:provider/provider.dart';

import 'hadethview.dart';

class HadethDetailsView extends StatelessWidget {
  static const String routename = "hadethdetailsview";
  const HadethDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingsProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as HadethData;
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            vm.getbackground(),
          ),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
            appBar: AppBar(
              iconTheme:
                  IconThemeData(color: vm.isdark ? Colors.white : Colors.black),
              title: Text(
                "إسلامي",
                style: TextStyle(
                    color: vm.isdark ? Color(0xffFACC1D) : Colors.black),
              ),
            ),
            body: Container(
                width: mediaQuery.width,
                height: mediaQuery.height,
                margin: const EdgeInsets.only(
                  right: 20,
                  left: 20,
                  top: 15,
                  bottom: 80,
                ),
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 20,
                  top: 15,
                  bottom: 15,
                ),
                decoration: BoxDecoration(
                    color: vm.isdark
                        ? const Color(0xff141A2E).withOpacity(0.8)
                        : const Color(0XFFF8F8F8).withOpacity(0.8),
                    borderRadius: BorderRadius.circular(25)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(args.title,
                          style: vm.isdark
                              ? theme.textTheme.bodyMedium
                                  ?.copyWith(color: Color(0xffFACC1D))
                              : theme.textTheme.bodyMedium
                                  ?.copyWith(color: Colors.black)),
                      Divider(),
                      Text(args.content,
                          textAlign: TextAlign.center,
                          style: vm.isdark
                              ? theme.textTheme.bodyMedium
                                  ?.copyWith(color: Color(0xffFACC1D))
                              : theme.textTheme.bodyMedium
                                  ?.copyWith(color: Colors.black))
                    ],
                  ),
                ))));
  }
}
