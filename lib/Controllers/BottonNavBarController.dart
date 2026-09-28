import 'package:get/get.dart';

class BottonNavBarController extends GetxController {
  RxInt selectedIndex = 0.obs;

  bool isSelected(int index) {
    return selectedIndex.value == index;
  }
}
