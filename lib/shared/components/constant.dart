import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/modules/hadith_screen/hadith_screen.dart';
import 'package:islami_app/modules/quran_screen/quran_screen.dart';
import 'package:islami_app/modules/radio_screen.dart';
import 'package:islami_app/modules/sebiha_screen/sebiha_screen.dart';

int selectedTabIndex = 3;
List<Widget> tabsScreen = [
  RadioScreen(),
  SebihaScreen(),
  HadithScreen(),
  QuranScreen(),
];
List<Map> numbersAndNamesOfVerses = [
  {
    "name": "الفاتحه",
    "number": 7,
  },
  {
    "name": "البقرة",
    "number": 286,
  },
  {
    "name": "آل عمران",
    "number": 200,
  },
  {
    "name": "النساء",
    "number": 176,
  },
  {
    "name": "المائدة",
    "number": 120,
  },
  {
    "name": "الأنعام",
    "number": 165,
  },
  {
    "name": "الأعراف",
    "number": 206,
  },
  {
    "name": "الأنفال",
    "number": 75,
  },
  {
    "name": "التوبة",
    "number": 129,
  },
  {
    "name": "يونس",
    "number": 109,
  },
  {
    "name": "هود",
    "number": 123,
  },
  {
    "name": "يوسف",
    "number": 111,
  },
  {
    "name": "الرعد",
    "number": 43,
  },
  {
    "name": "إبراهيم",
    "number": 52,
  },
  {
    "name": "الحجر",
    "number": 99,
  },
  {
    "name": "النحل",
    "number": 128,
  },
  {
    "name": "الإسراء",
    "number": 111,
  },
  {
    "name": "الكهف",
    "number": 110,
  },
  {
    "name": "مريم",
    "number": 98,
  },
  {
    "name": "طه",
    "number": 135,
  },
  {
    "name": "الأنبياء",
    "number": 112,
  },
  {
    "name": "الحج",
    "number": 78,
  },
  {
    "name": "المؤمنون",
    "number": 118,
  },
  {
    "name": "النّور",
    "number": 64,
  },
  {
    "name": "الفرقان",
    "number": 77,
  },
  {
    "name": "الشعراء",
    "number": 227,
  },
  {
    "name": "النّمل",
    "number": 93,
  },
  {
    "name": "القصص",
    "number": 88,
  },
  {
    "name": "العنكبوت",
    "number": 69,
  },
  {
    "name": "الرّوم",
    "number": 60,
  },
  {
    "name": "لقمان",
    "number": 34,
  },
  {
    "name": "السجدة",
    "number": 30,
  },
  {
    "name": "الأحزاب",
    "number": 73,
  },
  {
    "name": "سبأ",
    "number": 54,
  },
  {
    "name": "فاطر",
    "number": 45,
  },
  {
    "name": "يس",
    "number": 83,
  },
  {
    "name": "الصافات",
    "number": 182,
  },
  {
    "name": "ص",
    "number": 88,
  },
  {
    "name": "الزمر",
    "number": 75,
  },
  {
    "name": "غافر",
    "number": 85,
  },
  {
    "name": "فصّلت",
    "number": 54,
  },
  {
    "name": "الشورى",
    "number": 53,
  },
  {
    "name": "الزخرف",
    "number": 89,
  },
  {
    "name": "الدّخان",
    "number": 59,
  },
  {
    "name": "الجاثية",
    "number": 37,
  },
  {
    "name": "الأحقاف",
    "number": 35,
  },
  {
    "name": "محمد",
    "number": 38,
  },
  {
    "name": "الفتح",
    "number": 29,
  },
  {
    "name": "الحجرات",
    "number": 18,
  },
  {
    "name": "ق",
    "number": 45,
  },
  {
    "name": "الذاريات",
    "number": 60,
  },
  {
    "name": "الطور",
    "number": 49,
  },
  {
    "name": "النجم",
    "number": 62,
  },
  {
    "name": "القمر",
    "number": 55,
  },
  {
    "name": "الرحمن",
    "number": 78,
  },
  {
    "name": "الواقعة",
    "number": 96,
  },
  {
    "name": "الحديد",
    "number": 29,
  },
  {
    "name": "المجادلة",
    "number": 22,
  },
  {
    "name": "الحشر",
    "number": 24,
  },
  {
    "name": "الممتحنة",
    "number": 13,
  },
  {
    "name": "الصف",
    "number": 14,
  },
  {
    "name": "الجمعة",
    "number": 11,
  },
  {
    "name": "المنافقون",
    "number": 11,
  },
  {
    "name": "التغابن",
    "number": 18,
  },
  {
    "name": "الطلاق",
    "number": 12,
  },
  {
    "name": "التحريم",
    "number": 12,
  },
  {
    "name": "الملك",
    "number": 30,
  },
  {
    "name": "القلم",
    "number": 52,
  },
  {
    "name": "الحاقة",
    "number": 52,
  },
  {
    "name": "المعارج",
    "number": 44,
  },
  {
    "name": "نوح",
    "number": 28,
  },
  {
    "name": "الجن",
    "number": 28,
  },
  {
    "name": "المزّمّل",
    "number": 20,
  },
  {
    "name": "المدّثر",
    "number": 56,
  },
  {
    "name": "القيامة",
    "number": 40,
  },
  {
    "name": "الإنسان",
    "number": 31,
  },
  {
    "name": "المرسلات",
    "number": 50,
  },
  {
    "name": "النبأ",
    "number": 40,
  },
  {
    "name": "النازعات",
    "number": 46,
  },
  {
    "name": "عبس",
    "number": 42,
  },
  {
    "name": "التكوير",
    "number": 29,
  },
  {
    "name": "الإنفطار",
    "number": 19,
  },
  {
    "name": "المطفّفين",
    "number": 36,
  },
  {
    "name": "الإنشقاق",
    "number": 25,
  },
  {
    "name": "البروج",
    "number": 22,
  },
  {
    "name": "الطارق",
    "number": 17,
  },
  {
    "name": "الأعلى",
    "number": 19,
  },
  {
    "name": "الغاشية",
    "number": 26,
  },
  {
    "name": "الفجر",
    "number": 30,
  },
  {
    "name": "البلد",
    "number": 20,
  },
  {
    "name": "الشمس",
    "number": 15,
  },
  {
    "name": "الليل",
    "number": 21,
  },
  {
    "name": "الضحى",
    "number": 11,
  },
  {
    "name": "الشرح",
    "number": 8,
  },
  {
    "name": "التين",
    "number": 8,
  },
  {
    "name": "العلق",
    "number": 19,
  },
  {
    "name": "القدر",
    "number": 5,
  },
  {
    "name": "البينة",
    "number": 8,
  },
  {
    "name": "الزلزلة",
    "number": 8,
  },
  {
    "name": "العاديات",
    "number": 11,
  },
  {
    "name": "القارعة",
    "number": 11,
  },
  {
    "name": "التكاثر",
    "number": 8,
  },
  {
    "name": "العصر",
    "number": 3,
  },
  {
    "name": "الهمزة",
    "number": 9,
  },
  {
    "name": "الفيل",
    "number": 5,
  },
  {
    "name": "قريش",
    "number": 4,
  },
  {
    "name": "الماعون",
    "number": 7,
  },
  {
    "name": "الكوثر",
    "number": 3,
  },
  {
    "name": "الكافرون",
    "number": 6,
  },
  {
    "name": "النصر",
    "number": 3,
  },
  {
    "name": "المسد",
    "number": 5,
  },
  {
    "name": "الإخلاص",
    "number": 4,
  },
  {
    "name": "الفلق",
    "number": 5,
  },
  {
    "name": "الناس",
    "number": 6,
  },
];

const String titleAppBar = 'إسلامي';
final player = AudioPlayer();

List<String> namesOfHadith = [
  'الحديث الأول',
  'الحديث الثاني',
  'الحديث الـثـالـث',
  'الحديث الـرابع',
  'الحديث الخامس',
  'الحديث السادس',
  'الحديث السابع',
  'الحديث الثامن',
  'الحديث التاسع',
  'الحديث العاشر',
  'الحديث الحادي عشر',
  'الحديث الثاني عشر',
  'الحديث الثالث عشر',
  'الحديث الرابع عشر',
  'الحديث الخامس عشر',
  'الحديث السادس عشر',
  'الحديث السابع عشر',
  'الحديث الثامن عشر',
  'الحديث التاسع عشر',
  'الحديث العشرون',
  'الحديث الحادي والعشرون',
  'الحديث الثاني والعشرون',
  'الحديث الثالث والعشرون',
  'الـحديث الرابع والعشرون',
  'الحديث الخامس والعشرون',
  'الحديث السادس والعشرون',
  'الحديث السابع والعشرون',
  'الحديث الثامن والعشرون',
  'الحديث التاسع والعشرون',
  'الحديث الثلاثــون',
  'الـحديث الحادي والثلاثون',
  'الحديث الثاني والثلاثون',
  'الحديث الثالث والثلاثون',
  'الحديث الرابع والثلاثون',
  'الحديث الخامس والثلاثون',
  'الحديث السادس والثلاثون',
  'الحديث السابع والثلاثون',
  'الـحديث الثامن والثلاثون',
  'الحديث التاسع والثلاثون',
  'الحديث الأربعون',
  'الحديث الحادي والأربعون',
  'الحديث الثاني والأربعـون',
  'الحديث الثالث والأربعون',
  'الحديث الرابع والأربعون',
  'الـحديث الخامس والأربعون',
  'الحديث السادس والأربعون',
  'الحديث السابع والأربعون',
  'الـحديث الثامن والأربعون',
  'الحديث التاسع والأربعون',
  'الحديث الخمسون',
];

List<String> namesOfSebiha = [
  'سبحان الله',
  'الحمد لله',
  'الله أكبر',
  'لا إله إلا الله',
  'ولا حول ولا قوة إلا بالله',
];
