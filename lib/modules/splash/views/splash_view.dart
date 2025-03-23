import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nectar/app/constants/app_assets.dart';
import 'package:nectar/modules/splash/controller/splash_controller.dart';
import 'package:nectar/widgets/svg_image.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      backgroundColor: const Color(0xFF53B175),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Ensure space between elements
        children: [
          const Spacer(), // Takes up flexible space, pushing content to the center
          Center(
            child: SvgImage(
              img: AppAssets.appLogo,
              width: 80.w,
            ),
          ),
          const Spacer(), // Adds space between logo and progress indicator
          const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
          const SizedBox(height: 20), // Optional: Add extra space between progress indicator and bottom
        ],
      ),
    );
  }
}
