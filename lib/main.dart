import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/provider/setting_provider.dart';
import 'package:islamic/screen/views/hadeth_screen.dart';
import 'package:islamic/screen/home_screen.dart';
import 'package:islamic/screen/views/surah_screen.dart';
import 'package:islamic/style/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';



void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => SettingProvider(),
      child: Islamic()));
}

class Islamic extends StatelessWidget {
  // late SettingProvider appProvider;

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<SettingProvider>(context);
    appProvider.getSharedPreferences();
    return ScreenUtilInit(
      designSize: const Size(412, 870),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: HomeScreen.routeName,
          routes: {
            HomeScreen.routeName: (context) => HomeScreen(),
            SurahScreen.routeName: (context) => SurahScreen(),
            HadethScreen.routeName: (context) => HadethScreen(),
          },
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: appProvider.appThemeMode,
          localizationsDelegates: [
            AppLocalizations.delegate, // Add this line
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [
            Locale('en'), // English
            Locale('ar'), // Spanish
          ],
          
          locale: Locale(appProvider.languageCode),

        );
      },
    );
  }




}
