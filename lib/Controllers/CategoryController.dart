import 'package:get/get.dart';

class Categorycontroller extends GetxController {
  List categoryList = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  RxInt selectedCategoryIndex = 0.obs;

  bool isselectedCategory(int index) {
    return selectedCategoryIndex.value == index;
  }

  List subCategoryList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  RxInt selectedSubCateIndex = 0.obs;

  bool isSelectedSubCategory(int index) {
    return selectedSubCateIndex.value == index;
  }
}
