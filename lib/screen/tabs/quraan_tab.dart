import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/app_text_file/app_text_files.dart';
import 'package:islamic/models/surah_arrgument.dart';
import 'package:islamic/provider/setting_provider.dart';
import 'package:islamic/screen/views/surah_screen.dart';
import 'package:provider/provider.dart';

class QuraanTab extends StatelessWidget {
  const QuraanTab({super.key});

  @override
  Widget build(BuildContext context) {
    var quranProvider = Provider.of<SettingProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          width: 205.w,
          height: 227.h,
          child: Image.asset('assets/image/quran_image.png'),
        ),
        SizedBox(height: 15.h),
        Table(
          border: TableBorder(
            top: BorderSide(
                color: Theme.of(context).colorScheme.onSecondary, width: 3.r),
            bottom: BorderSide(
                color: Theme.of(context).colorScheme.onSecondary, width: 3.r),
            verticalInside: BorderSide(
                color: Theme.of(context).colorScheme.onSecondary, width: 3.r),
          ),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(children: [
              Center(
                child: Text(
                  AppLocalizations.of(context)!.surahName,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              Center(
                child: Text(
                  AppLocalizations.of(context)!.ayatNumber,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ]),
          ],
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
                return Divider();
              },
              itemCount: AppTextFiles.surahNames.length),
        )
      ],
    );
  }
}
