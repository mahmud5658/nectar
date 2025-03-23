import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nectar/app/route/app_pages.dart';
import 'package:nectar/modules/splash/controller/splash_controller.dart';
import 'package:nectar/modules/splash/views/splash_view.dart';

class Nectar extends GetView<SplashController> {
  const Nectar({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
      initialRoute: Routes.SPLASH,
      getPages: AppPages.routes,
    );
  }
}
