import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_app_full/constant/settings_provider.dart';
import 'package:provider/provider.dart';

class SuraTitleWidget extends StatelessWidget {
  final String suraname;
  final String suranumber;
  const SuraTitleWidget(
      {super.key, required this.suraname, required this.suranumber});

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingsProvider>(context);
    var theme = Theme.of(context);
    var mediaquery = MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
          child: Text(
            textAlign: TextAlign.center,
            suranumber,
            style: vm.isdark
                ? theme.textTheme.bodyMedium?.copyWith(color: Colors.white)
                : theme.textTheme.bodyMedium?.copyWith(color: Colors.black),
          ),
        ),
        SizedBox(
          width: 3,
          height: 40,
          child: VerticalDivider(),
        ),
        Expanded(
          child: Text(
            textAlign: TextAlign.center,
            suraname,
            style: vm.isdark
                ? theme.textTheme.bodyMedium?.copyWith(color: Colors.white)
                : theme.textTheme.bodyMedium?.copyWith(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
