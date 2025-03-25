import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:nectar/app/constants/app_assets.dart';
import 'package:nectar/app/route/app_pages.dart';
import 'package:nectar/widgets/svg_image.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(
            AppAssets.background,
            fit: BoxFit.fill,
          )),
          Positioned(
            bottom: 100.h,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgImage(
                    img: AppAssets.carrot,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Welcome to our store',
                    style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 12.sp),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Ger your groceries in as fast as one hour',
                    style: TextStyle(color: Color(0xffC4BCB6)),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ElevatedButton(
                      onPressed: ()=> Get.offAllNamed(Routes.LOGIN),
                      child: Text('Get started'))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
