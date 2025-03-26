import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_preview/device_preview.dart';
import 'package:nectar/app.dart';
void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => ScreenUtilInit(
        designSize: Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        rebuildFactor: (old, data) => true,
        builder: (context, child) => Nectar(),
      ),
    ),
  );
}
