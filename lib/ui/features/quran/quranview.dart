import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_app_full/constant/settings_provider.dart';
import 'package:islami_app_full/ui/features/quran/qurandetails.dart';
import 'package:islami_app_full/ui/features/quran/suratitlewideget.dart';
import 'package:provider/provider.dart';

class QuranView extends StatelessWidget {
  QuranView({super.key});
  List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  List<int> versesNumber = [
    7,
    286,
    200,
    176,
    120,
    165,
    206,
    75,
    129,
    109,
    123,
    111,
    43,
    52,
    99,
    128,
    111,
    110,
    98,
    135,
    112,
    78,
    118,
    64,
    77,
    227,
    93,
    88,
    69,
    60,
    34,
    30,
    73,
    54,
    45,
    83,
    182,
    88,
    75,
    85,
    54,
    53,
    89,
    59,
    37,
    35,
    38,
    29,
    18,
    45,
    60,
    49,
    62,
    55,
    78,
    96,
    29,
    22,
    24,
    13,
    14,
    11,
    11,
    18,
    12,
    12,
    30,
    52,
    52,
    44,
    28,
    28,
    20,
    56,
    40,
    31,
    50,
    40,
    46,
    42,
    29,
    19,
    36,
    25,
    22,
    17,
    19,
    26,
    30,
    20,
    15,
    21,
    11,
    8,
    5,
    19,
    5,
    8,
    8,
    11,
    11,
    8,
    3,
    9,
    5,
    4,
    6,
    3,
    6,
    3,
    5,
    4,
    5,
    6
  ];

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingsProvider>(context);
    var theme = Theme.of(context);
    var mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "assets/images/quran_header_icn.png",
            width: mediaquery.width,
            height: mediaquery.height * 0.2,
          ),
          Divider(
            thickness: 1.75,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "عدد الآيات",
                  textAlign: TextAlign.center,
                  style: vm.isdark
                      ? theme.textTheme.titleLarge
                          ?.copyWith(color: Colors.white)
                      : theme.textTheme.titleLarge
                          ?.copyWith(color: Colors.black),
                ),
              ),
              SizedBox(
                width: 3,
                height: 40,
                child: VerticalDivider(),
              ),
              Expanded(
                child: Text(
                  "إسم السورة",
                  textAlign: TextAlign.center,
                  style: vm.isdark
                      ? theme.textTheme.titleLarge
                          ?.copyWith(color: Colors.white)
                      : theme.textTheme.titleLarge
                          ?.copyWith(color: Colors.black),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1.75,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: suraNames.length,
                itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                            context, QuranDetailsScreen.routename,
                            arguments: SuraDataDetails(
                                suranumber: (index + 1).toString(),
                                suraname: suraNames[index],
                                versesNmber: (versesNumber[index]).toString()));
                      },
                      child: SuraTitleWidget(
                        suraname: suraNames[index],
                        suranumber: (versesNumber[index]).toString(),
                      ),
                    )),
          )
        ],
      ),
    );
  }
}

class SuraDataDetails {
  final String suraname;
  final String versesNmber;
  final String suranumber;

  SuraDataDetails(
      {required this.suraname,
      required this.versesNmber,
      required this.suranumber});
}
