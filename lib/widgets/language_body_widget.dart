import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic/provider/setting_provider.dart';
import 'package:provider/provider.dart';

class LanguageBodyWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    var languageProvider = Provider.of<SettingProvider>(context);

    return InkWell(
      onTap: () {
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.r),
              topLeft: Radius.circular(20.r),
            ),
          ),
          context: context,
          builder: (context) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      AppLocalizations.of(context)!.language,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  Divider(
                    indent: 40.w,
                    endIndent: 40.w,
                  ),
                  SizedBox(height: 15.h),
                  InkWell(
                    onTap: () {
                      languageProvider.changeLanguage('en');
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Text(
                          AppLocalizations.of(context)!.english,
                          style: languageProvider.languageCode == 'en'
                          ? Theme.of(context).textTheme.titleSmall
                          : Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primary),
                        ),
                        Spacer(),
                        Visibility(
                          visible: languageProvider.languageCode == 'en' ? true : false,
                          child: Icon(
                            Icons.done,
                            size: 30.r,
                            color: Theme.of(context).colorScheme.onPrimary
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  InkWell(
                    onTap: () {
                      languageProvider.changeLanguage('ar');
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Text(
                          AppLocalizations.of(context)!.arabic,
                          style: languageProvider.languageCode == 'ar'
                              ? Theme.of(context).textTheme.titleSmall
                              : Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .primary),
                        ),
                        Spacer(),
                        Visibility(
                          visible: languageProvider.languageCode == 'ar' ? true : false,
                          child: Icon(
                            Icons.done,
                            size: 30.r,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.h),
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        height: 60.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(color: Theme.of(context).secondaryHeaderColor)),
        child: Text(
          languageProvider.languageCode == 'en' ? AppLocalizations.of(context)!.english : AppLocalizations.of(context)!.arabic,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
