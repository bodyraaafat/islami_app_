import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constant/settings_provider.dart';

class TasbeehView extends StatefulWidget {
  const TasbeehView({super.key});

  @override
  State<TasbeehView> createState() => _TasbeehViewState();
}

class _TasbeehViewState extends State<TasbeehView> {
  int counter = 0;
  double angel = 0;
  int index = 0;
  List<String> tasbehlist = [
    "سبحان الله",
    "الحمدلله",
    "الله اكبر",
  ];
  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingsProvider>(context);
    var theme = Theme.of(context);

    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05),
                child: Transform.rotate(
                    angle: angel,
                    child: vm.isdark
                        ? Image.asset("assets/images/body of seb7a_black.png")
                        : Image.asset("assets/images/body of seb7a.png")),
              ),
              vm.isdark
                  ? Image.asset("assets/images/head of seb7a_black.png")
                  : Image.asset("assets/images/head of seb7a.png")
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "عدد التسبيحات",
            style: vm.isdark
                ? theme.textTheme.titleLarge?.copyWith(color: Colors.white)
                : theme.textTheme.titleLarge?.copyWith(color: Colors.black),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              counter.toString(),
              style: vm.isdark
                  ? TextStyle(color: Colors.white)
                  : TextStyle(color: Colors.black),
            ),
            decoration: BoxDecoration(
                color: theme.canvasColor,
                borderRadius: BorderRadius.circular(20)),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: tasbih,
            child: Container(
              padding: EdgeInsets.all(15),
              child: Text(
                tasbehlist[index],
                style:
                    TextStyle(color: vm.isdark ? Colors.black : Colors.white),
              ),
              decoration: BoxDecoration(
                  color: vm.isdark ? Color(0xffFACC1D) : Color(0xffB7935F),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ],
      ),
    );
  }

  void tasbih() {
    if (counter < 33) {
      angel++;
      counter++;
    } else {
      if (index < 2) {
        index++;
        counter = 0;
      } else {
        counter = 0;
        index = 0;
      }
    }
    setState(() {});
  }
}
