import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SuraTitleWidget extends StatelessWidget {
  final String suraname;
  final String suranumber;
  const SuraTitleWidget(
      {super.key, required this.suraname, required this.suranumber});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaquery = MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
          child: Text(
            textAlign: TextAlign.center,
            suranumber,
            style: theme.textTheme.bodyMedium,
          ),
        ),
        Container(
          width: 3,
          height: 40,
          color: theme.primaryColor,
        ),
        Expanded(
          child: Text(
            textAlign: TextAlign.center,
            suraname,
            style: theme.textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
