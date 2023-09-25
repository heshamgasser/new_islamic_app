import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic/models/surah_arrgument.dart';
import 'package:islamic/style/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
            image: AssetImage(
                Theme.of(context).colorScheme.brightness == Brightness.light
                    ? 'assets/image/background.png'
                    : 'assets/image/dark_bg.png'),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.islami,
              style: Theme.of(context).textTheme.titleLarge),
        ),
        body: verses.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ),
              )
            : Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'سورة ${argument.surahName}',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        SizedBox(width: 30.w),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.play_circle,
                            color: Theme.of(context).colorScheme.brightness ==
                                    Brightness.light
                                ? Colors.black
                                : AppColors.yellowColor,
                            size: 30.r,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 3,
                      indent: 30.w,
                      endIndent: 30.w,
                    ),
                    Expanded(
                      child: ListView.builder(
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
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                                TextSpan(
                                  text: '\u06dd${index + 1}',
                                  style: GoogleFonts.amiri(
                                      color: Theme.of(context)
                                          .secondaryHeaderColor,
                                      fontSize: 25.sp),
                                ),
                              ],
                            ),
                          );
                        },
                        itemCount: verses.length,
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }

  Future<void> loadFile(int index) async {
    String surah = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = surah.split('\n');
    verses = lines;
    setState(() {});
  }
}
