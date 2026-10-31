import 'package:get/get.dart';

class AddressController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxList addressList = [1, 2].obs;

  bool isDefault(int index) {
    return selectedIndex.value == index;
  }
}
