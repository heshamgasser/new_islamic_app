import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/screen/views/hadeth_screen.dart';
import 'package:islamic/screen/home_screen.dart';
import 'package:islamic/screen/views/surah_screen.dart';
import 'package:islamic/style/app_theme.dart';


void main() {
  runApp(Islamic());
}

class Islamic extends StatelessWidget {
  const Islamic({super.key});

  @override
  Widget build(BuildContext context) {
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
        );
      },
    );
  }
}
