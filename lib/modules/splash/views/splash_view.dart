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
    final theme = Theme.of(context);
    Get.put(SplashController(), permanent: true);

    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      body: Column(
        children: [
          const Spacer(),
          _buildLogo(),
          const Spacer(),
          _buildLoadingIndicator(),
        ],
      ),
    );
  }

  Widget _buildLogo() {
    return Center(
      child: SvgImage(
        img: AppAssets.appLogo,
        width: 70.w,
        height: 70.h,
      ),
    );
  }
  Widget _buildLoadingIndicator() {
    return Padding(
      padding: EdgeInsets.only(bottom: 40.h),
      child: const CircularProgressIndicator(),
    );
  }
}
