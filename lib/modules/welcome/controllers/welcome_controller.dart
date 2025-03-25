
import 'package:get/get.dart';
import 'package:nectar/app/route/app_pages.dart';

class WelcomeController extends GetxController {
  @override
  void onInit() {
    Get.offAllNamed(Routes.LOGIN);
    super.onInit();
  }
}
