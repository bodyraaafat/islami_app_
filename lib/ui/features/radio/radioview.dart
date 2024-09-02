import 'package:flutter/material.dart';
import 'package:islami_app_full/constant/settings_provider.dart';
import 'package:provider/provider.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var vm = Provider.of<SettingsProvider>(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Image.asset("assets/images/radio_screen.png"),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "إذاعة القرآن الكريم",
          style: vm.isdark
              ? theme.textTheme.titleLarge?.copyWith(color: Colors.white)
              : theme.textTheme.titleLarge?.copyWith(color: Colors.black),
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.skip_previous,
              color: vm.isdark ? Color(0xffFACC1D) : theme.canvasColor,
              size: 40,
            ),
            Icon(
              Icons.play_arrow,
              size: 65,
              color: vm.isdark ? Color(0xffFACC1D) : theme.canvasColor,
            ),
            Icon(
              Icons.skip_next,
              color: vm.isdark ? Color(0xffFACC1D) : theme.canvasColor,
              size: 40,
            )
          ],
        )
      ],
    );
  }
}
