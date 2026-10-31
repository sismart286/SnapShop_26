import 'package:get/get.dart';

class CartController extends GetxController {
  RxList cartItemsList = [1, 2, 3].obs;
  final quantity = 2.obs;

  void increment() {
    quantity.value++;
  }

  void decrement() {
    if (quantity.value > 1) {
      quantity.value--;
    }
  }
}
