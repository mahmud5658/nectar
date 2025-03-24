import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/app/theme/app_colors.dart';

ThemeData theme = ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.primaryColor,
    colorScheme: const ColorScheme.light(
        brightness: Brightness.dark,
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
    ));
