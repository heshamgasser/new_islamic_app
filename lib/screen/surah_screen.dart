import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic/models/surah_arrgument.dart';

class SurahScreen extends StatefulWidget {
  static const String routeName = 'Surah Detail';

  @override
  State<SurahScreen> createState() => _SurahScreenState();
}

class _SurahScreenState extends State<SurahScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var argument = ModalRoute.of(context)?.settings.arguments as SurahArgument;
    if (verses.isEmpty) {
      loadFile(argument.SurahIndex);
    }

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/image/background.png'), fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            argument.surahName,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: verses.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ),
              )
            : ListView.builder(
                itemBuilder: (context, index) {
                  return RichText(
                    textDirection: TextDirection.rtl,
                    textAlign: verses.length <= 20
                        ? TextAlign.center
                        : TextAlign.justify,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: verses[index],
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        TextSpan(
                          text: '\u06dd${index + 1}',
                          style: GoogleFonts.amiri(
                              color: Theme.of(context).primaryColor,
                              fontSize: 25.sp),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: verses.length,
              ),
      ),
    );
  }

  Future<void> loadFile(int index) async {
    String surah =
        await rootBundle.loadString('assets/files/surah/${index + 1}.txt');
    List<String> lines = surah.split('\n');
    verses = lines;
    setState(() {});
  }
}
