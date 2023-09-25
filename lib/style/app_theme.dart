import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    primaryColor: AppColors.lightPrimaryColor,
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: Colors.black,
        onPrimary: AppColors.lightPrimaryColor,
        secondary: Colors.black,
        onSecondary: Color(0xFFB7935F),
        error: Colors.red,
        onError: Colors.black,
        background: Colors.white,
        onBackground: Colors.white,
        surface: Colors.black,
        onSurface: Colors.white),
    secondaryHeaderColor: AppColors.lightPrimaryColor,
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
      labelLarge: GoogleFonts.elMessiri(
        fontSize: 30.sp,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      titleSmall: GoogleFonts.elMessiri(
          fontSize: 25.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.lightPrimaryColor),
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
    dividerTheme:
        DividerThemeData(color: AppColors.lightPrimaryColor, thickness: 3),
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    primaryColor: AppColors.darkPrimaryColor,
    colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: Colors.white,
        onPrimary: AppColors.yellowColor,
        secondary: AppColors.yellowColor,
        onSecondary: AppColors.yellowColor,
        error: Colors.red,
        onError: Colors.black,
        background: Colors.white,
        onBackground: Colors.white,
        surface: Colors.black,
        onSurface: Colors.white),
    secondaryHeaderColor: AppColors.yellowColor,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white, size: 25.w),
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
        fontSize: 30.sp,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      titleMedium: GoogleFonts.elMessiri(
          fontSize: 25.sp, fontWeight: FontWeight.w500, color: Colors.white),
      displayLarge: GoogleFonts.notoKufiArabic(
          fontSize: 25.sp, fontWeight: FontWeight.bold, color: Colors.white),
      labelSmall:
          GoogleFonts.reemKufi(fontSize: 12.sp, color: AppColors.yellowColor),
      displayMedium: GoogleFonts.notoKufiArabic(
          fontSize: 20.sp, fontWeight: FontWeight.bold, color: Colors.white),
      displaySmall: GoogleFonts.notoKufiArabic(
          fontSize: 20.sp,
          fontWeight: FontWeight.normal,
          color: AppColors.yellowColor),
      labelLarge: GoogleFonts.elMessiri(
        fontSize: 30.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.yellowColor,
      ),
      titleSmall: GoogleFonts.elMessiri(
          fontSize: 25.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.yellowColor),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      selectedItemColor: AppColors.yellowColor,
      selectedLabelStyle:
          GoogleFonts.reemKufi(fontSize: 12.sp, color: AppColors.yellowColor),
      unselectedItemColor: Colors.white,
      unselectedLabelStyle:
          GoogleFonts.reemKufi(fontSize: 12.sp, color: Colors.white),
    ),
    dividerTheme: DividerThemeData(color: AppColors.yellowColor, thickness: 3),
  );
}
