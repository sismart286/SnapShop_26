import 'dart:async';

import 'package:get/get.dart';
import 'package:snapshop/Pages/ProfilePage/ProfilePage.dart';

class PasswordUpdateSuccessController extends GetxController {
  final seconds = 6.obs;
  Timer? _timer;

  @override
  void onInit() {
    super.onInit();
    startCountdown();
  }

  void startCountdown() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds.value > 1) {
        seconds.value--;
      } else {
        timer.cancel();
        Get.offAll(() => ProfilePage());
      }
    });
  }

  void goToProfile() {
    _timer?.cancel();
    Get.offAll(() => ProfilePage());
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }
}
