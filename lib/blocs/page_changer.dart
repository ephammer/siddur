
import 'package:flutter/cupertino.dart';
import 'package:siddur/pages/bedtime_shema_page.dart';
import 'package:siddur/pages/morning_prayer_page.dart';

class PageChanger extends ChangeNotifier{

  List<Widget> listPages = [
    BedTimeShema(),
    MorningPragerPage(),
  ];

  int _chosenPageIndex = 0;

  PageChanger();

  getPageIndex() => _chosenPageIndex;

  getPage() => listPages[_chosenPageIndex];

  setPageIndex(int index) {
    this._chosenPageIndex = index;
    notifyListeners();
  }
}