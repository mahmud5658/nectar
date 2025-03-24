import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nectar/app/constants/app_assets.dart';
import 'package:nectar/modules/splash/controller/splash_controller.dart';
import 'package:nectar/widgets/svg_image.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    Get.put(SplashController(), permanent: true);
    return Scaffold(
      backgroundColor: theme.primaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Center(
              child: SvgImage(
                img: AppAssets.appLogo,
                width: 75.w,
                height: 75.h,
              ),
            ),
            const Spacer(),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }
}
