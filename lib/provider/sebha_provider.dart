import 'package:flutter/material.dart';

class SebhaProvider extends ChangeNotifier{
  int sebhaCount = 0;
  double angle = 0;
  int zekrIndex = 0;

  List<String> zekr = [
    'سبحان الله',
    'الحمد لله',
    'الله أكبر',
    'لا حول ولا قوة إلا بالله'
  ];


  void changeCounter() {
    sebhaCount++;
    angle = angle + (180 / 33);
    if (sebhaCount % 33 == 0 && zekrIndex < zekr.length) {
      zekrIndex++;
      sebhaCount = 0;
    }
    if (zekrIndex == zekr.length) {
      zekrIndex = 0;
      sebhaCount = 0;
    }
    notifyListeners();
  }

  void reset() {
    zekrIndex = 0;
    sebhaCount = 0;
    angle = 0;
    notifyListeners();
  }


}