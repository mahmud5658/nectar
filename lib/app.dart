import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:nectar/app/route/app_pages.dart';
import 'package:nectar/app/theme/theme.dart';

class Nectar extends StatelessWidget {
  const Nectar({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.SHOP,
      getPages: AppPages.routes,
      theme: theme,
      themeMode: ThemeMode.light,
    );
  }
}
