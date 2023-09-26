import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/provider/setting_provider.dart';
import 'package:islamic/widgets/language_body_widget.dart';
import 'package:islamic/widgets/theme_body_widget.dart';
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
            LanguageBodyWidget(),
            SizedBox(height: 10.h),
            Text(
              AppLocalizations.of(context)!.theme,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            ThemeBodyWidget(),
          ],
        ),
      ),
    );
  }
}
