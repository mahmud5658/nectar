import 'package:get/get.dart';
import 'package:nectar/app/route/app_pages.dart';
class SplashController extends GetxController {
  @override
  void onInit() async {
    await Future.delayed(Duration(seconds: 2));
    Get.offNamed(Routes.WELCOME);
    super.onInit();
  }
}
