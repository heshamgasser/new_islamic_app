import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SurahProvider extends ChangeNotifier{
  List<String> verses = [];

  Future<void> loadFile(int index) async {
    String surah = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = surah.split('\n');
    verses = lines;
    notifyListeners();
  }




}