import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/app_text_file/app_text_files.dart';
import 'package:islamic/models/surah_arrgument.dart';
import 'package:islamic/screen/views/surah_screen.dart';
import 'package:islamic/widgets/table_header.dart';

class QuraanTab extends StatelessWidget {
  const QuraanTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
            width: 205.w,
            height: 227.h,
            child: Image.asset('assets/image/quran_image.png')),
        Divider(


        ),
        Row(
          children: [
            TableHeader('Surah Name'),
            SizedBox(
              height: 47.h,
              child: VerticalDivider(
                indent: 0,
                endIndent: 0,

              ),
            ),
            TableHeader('Ayat Number'),
          ],
        ),
        Divider(

        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      SurahScreen.routeName,
                      arguments:
                          SurahArgument(AppTextFiles.surahNames[index], index),
                    );
                  },
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            AppTextFiles.surahNames[index],
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            AppTextFiles.ayatNumber[index],
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(

                );
              },
              itemCount: AppTextFiles.surahNames.length),
        )
      ],
    );
  }
}
