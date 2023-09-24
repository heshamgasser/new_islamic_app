import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic/models/hadeth_model.dart';

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

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/image/background.png'), fit: BoxFit.fill),
      ),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('assets/image/hadeeth_image.png'),
            Divider(
              thickness: 3,
              color: Theme.of(context).primaryColor,
            ),
            Center(
              child: Text(
                'Hadeeth',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Divider(
              thickness: 3,
              color: Theme.of(context).primaryColor,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Text(
                      ahadeth[index].title,
                      style: Theme.of(context).textTheme.displayLarge,
                      textAlign: TextAlign.center,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Theme.of(context).primaryColor,
                      thickness: 3,
                    );
                  },
                  itemCount: ahadeth.length),
            ),
          ],
        ),
      ),
    );
  }

 void loadHadethFile (){
    rootBundle.loadString('assets/files/ahadeth .txt').then((value){
      List<String> allAhadeth =  value.trim().split('#');
      for (int i = 0; i < allAhadeth.length; i++){
       List<String> hadethLines =  allAhadeth[i].trim().split('\n');
       String title = hadethLines[0];
       hadethLines.removeAt(0);
       List<String> content = hadethLines;

       HadethModel hadethModel = HadethModel(title, content);
       ahadeth.add(hadethModel);
       setState(() {

       });
      }


    }).catchError((error){});

 }
}
