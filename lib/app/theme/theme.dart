import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/app/theme/app_colors.dart';

ThemeData theme = ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.primaryColor,
    colorScheme: const ColorScheme.light(
        brightness: Brightness.light,
        surface: AppColors.surfaceColor,
        onSurface: AppColors.onSurfaceColor,
        primary: AppColors.primaryColor,
        onPrimary: Colors.white),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          textStyle: TextStyle(fontSize: 5.sp, color: Colors.white),
          padding: EdgeInsets.symmetric(vertical: 25.r),
          fixedSize: Size.fromWidth(double.maxFinite),
          backgroundColor: AppColors.primaryColor,
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
          overlayColor: Colors.transparent),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(color: AppColors.primaryColor)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(color: AppColors.primaryColor)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(color: AppColors.primaryColor)),
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: Colors.white,
    )
    );
