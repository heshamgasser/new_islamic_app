import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic/theme/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    primaryColor: AppColors.lightPrimaryColor,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black, size: 25.w),
    ),
    textTheme: TextTheme(
        titleLarge: GoogleFonts.elMessiri(
          fontSize: 30.sp,
          fontWeight: FontWeight.bold,
          color: Color(0xFF242424),
        ),
        titleMedium: GoogleFonts.elMessiri(
            fontSize: 25.sp, fontWeight: FontWeight.w500, color: Colors.black),
        displayLarge: GoogleFonts.notoKufiArabic(
            fontSize: 25.sp, fontWeight: FontWeight.bold, color: Colors.black),
        labelSmall: GoogleFonts.reemKufi(fontSize: 12.sp, color: Colors.black),
      displayMedium: GoogleFonts.notoKufiArabic(
          fontSize: 20.sp, fontWeight: FontWeight.bold, color: Colors.white),
      displaySmall: GoogleFonts.notoKufiArabic(
          fontSize: 20.sp, fontWeight: FontWeight.normal, color: Colors.black),

    ),



    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      selectedItemColor: Color(0xFF242424),
      selectedLabelStyle:
          GoogleFonts.reemKufi(fontSize: 12.sp, color: Colors.black),
      unselectedItemColor: Colors.white,
      unselectedLabelStyle:
          GoogleFonts.reemKufi(fontSize: 12.sp, color: Colors.white),
    ),



  );

  static ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
  );
}
