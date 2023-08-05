import 'package:get/get.dart';

import '../../core/routes/routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    nextPage();
    super.onInit();
  }

  void nextPage() {
    Future.delayed(5.seconds, () {
      Get.offAndToNamed(
        Routes.login,
      );
    });
  }
}
