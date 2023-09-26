import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../models/hadeth_model.dart';

class AhadethProvider extends ChangeNotifier {
  List<HadethModel> ahadeth = [];

  void loadHadethFile() {
    rootBundle.loadString('assets/files/ahadeth .txt').then((value) {
      List<String> allAhadeth = value.trim().split('#');
      for (int i = 0; i < allAhadeth.length; i++) {
        int lastIndexOfFirstLine = allAhadeth[i].trim().indexOf('\n');
        String title = allAhadeth[i].trim().substring(0, lastIndexOfFirstLine);
        String content =
            allAhadeth[i].trim().substring(lastIndexOfFirstLine + 1);
        HadethModel hadethModel = HadethModel(title, content);
        ahadeth.add(hadethModel);
        notifyListeners();
      }

      // for (int i = 0; i < allAhadeth.length; i++) {
      //   List<String> hadethLines = allAhadeth[i].trim().split('\n');
      //   String title = hadethLines[0];
      //   hadethLines.removeAt(0);
      //   List<String> content = hadethLines;
      //   HadethModel hadethModel = HadethModel(title, content);
      //       ahadeth.add(hadethModel);
      // notifyListeners();
      //     }
    }).catchError((error) {});
  }
}
