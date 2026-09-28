import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:snapshop/Pages/AuthPage/SignInPage.dart';
import 'package:snapshop/Pages/Home/HomePage.dart';

class SplashController extends GetxController {
  final auth = FirebaseAuth.instance;

  @override
  void onInit() async {
    super.onInit();
    await splashHandle();
  }

  Future<void> splashHandle() async {
    await Future.delayed(Duration(seconds: 3), () {});
    if (auth.currentUser == null) {
      Get.offAll(() => SignInPage());
    } else {
      Get.offAll(() => HomePage());
    }
  }
}
