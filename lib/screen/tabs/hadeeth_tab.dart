import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic/models/hadeth_model.dart';
import 'package:islamic/screen/views/hadeth_screen.dart';

class HadeethTab extends StatefulWidget {
  @override
  State<HadeethTab> createState() => _HadeethTabState();
}

class _HadeethTabState extends State<HadeethTab> {
  List<HadethModel> ahadeth = [];

  @override
  Widget build(BuildContext context) {
    if (ahadeth.isEmpty) {
      loadHadethFile();
    }

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('assets/image/hadeeth_image.png'),
          Divider(

          ),
          Center(
            child: Text(
              'Hadeeth',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Divider(

          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, HadethScreen.routeName,
                          arguments: ahadeth[index]);
                    },
                    child: Text(
                      ahadeth[index].title,
                      style: Theme.of(context).textTheme.displayLarge,
                      textAlign: TextAlign.center,
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(

                  );
                },
                itemCount: ahadeth.length),
          ),
        ],
      ),
    );
  }

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
        setState(() {});
      }

      // for (int i = 0; i < allAhadeth.length; i++) {
      //   List<String> hadethLines = allAhadeth[i].trim().split('\n');
      //   String title = hadethLines[0];
      //   hadethLines.removeAt(0);
      //   List<String> content = hadethLines;
      //   HadethModel hadethModel = HadethModel(title, content);
      //       ahadeth.add(hadethModel);
      //       setState(() {});
      //     }
    }).catchError((error) {});
  }
}
