import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/provider/setting_provider.dart';
import 'package:islamic/widgets/setting_body_widget.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<SettingProvider>(context);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              AppLocalizations.of(context)!.language,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SettingBodyWidget(
              header: AppLocalizations.of(context)!.language,
              text: AppLocalizations.of(context)!.english,
              optionOne: AppLocalizations.of(context)!.english,
              optionTwo: AppLocalizations.of(context)!.arabic,
              optionOneFunction: () {
                pro.changeLanguage('en');
              },
              optionTwoFunction: () {
                pro.changeLanguage('ar');
              },
              selector: pro.languageSelector,
              optionOneSelectionFunction: () {
                pro.changeLanguageSelector();
              },
              optionTwoSelectionFunction: () {
                pro.changeLanguageSelector();
              },
            ),
            SizedBox(height: 10.h),
            Text(
              AppLocalizations.of(context)!.theme,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SettingBodyWidget(
              header: AppLocalizations.of(context)!.theme,
              text: AppLocalizations.of(context)!.lightTheme,
              optionOne: AppLocalizations.of(context)!.lightTheme,
              optionTwo: AppLocalizations.of(context)!.darkTheme,
              optionOneFunction: () {
                pro.changeTheme(ThemeMode.light);
              },
              optionTwoFunction: () {
                pro.changeTheme(ThemeMode.dark);
              },
              selector: pro.themeSelector,
              optionOneSelectionFunction: () {
                pro.changeThemeSelector();
              },
              optionTwoSelectionFunction: () {
                pro.changeThemeSelector();
              },
            ),
          ],
        ),
      ),
    );
  }
}
