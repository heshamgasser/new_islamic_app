import 'package:flutter/material.dart';
import 'package:islamic/models/surah_arrgument.dart';

class SurahScreen extends StatelessWidget {
  static const String routeName = 'Surah Detail';

  @override
  Widget build(BuildContext context) {

    var argument = ModalRoute.of(context)?.settings.arguments as SurahArgument;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/image/background.png'), fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(

          title: Text(argument.surahName, style: Theme.of(context).textTheme.titleLarge,),
        ),
      ),
    );
  }
}
