import 'package:flutter/material.dart';
import '../screen/tabs/hadeeth_tab.dart';
import '../screen/tabs/quraan_tab.dart';
import '../screen/tabs/radio_tab.dart';
import '../screen/tabs/sebha_tab.dart';
import '../screen/tabs/setting_tab.dart';

class HomeProvider extends ChangeNotifier{
  int selectedIndex = 0;


  List<Widget> tabs = [
    QuraanTab(),
    HadeethTab(),
    SebhaTab(),
    RadioTab(),
    SettingTab()
  ];


  void changeIndex (int value){
    selectedIndex = value;
    notifyListeners();
  }

}