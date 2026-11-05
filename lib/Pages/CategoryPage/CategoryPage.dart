import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Controllers/CategoryController.dart';
import 'package:snapshop/Pages/CategoryPage/Widgets/CategoryTab.dart';
import 'package:snapshop/Pages/CategoryPage/Widgets/SubCategoryTab.dart';
import 'package:snapshop/Pages/CategoryPage/Widgets/SubSubCategoryTab.dart';
import 'package:snapshop/Widgets/MyBottomNavigationBar.dart';

class CategoryPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    Categorycontroller categorycontroller = Get.put(Categorycontroller());

    bool isCategoryTabActive = false;

    return Scaffold(
      backgroundColor: primaryGreen,
      appBar: AppBar(
        backgroundColor: primaryGreen,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Image.asset(AssetsImage.backIcon, width: 23, color: white),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.category_rounded, color: white, size: 24),
            SizedBox(width: 5),
            Text(
              "All Categories",
              style: TextStyle(
                color: white,
                fontFamily: "Outfit",
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: bgGrey,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Row(
          children: [
            Column(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                      color: lightGrey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 40),
                        child: Column(
                          children: categorycontroller.categoryList
                              .asMap()
                              .entries
                              .map((entry) {
                                int index = entry.key;
                                return Obx(() {
                                  bool isActive = categorycontroller
                                      .isselectedCategory(index);
                                  return InkWell(
                                    onTap: () {
                                      categorycontroller
                                              .selectedCategoryIndex
                                              .value =
                                          index;
                                    },
                                    child: CategoryTab(isTabActive: isActive),
                                  );
                                });
                              })
                              .toList(),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 10),
            Column(
              children: [
                Text(
                  "Subcategories",
                  style: TextStyle(
                    color: black,
                    fontFamily: "Outfit",
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width / 1.47,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: primaryExtraLightGreen,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  //  SubCategoryTab(),
                  child: Obx(() {
                    List subCategoryList = categorycontroller.subCategoryList;
                    final selectedSubCateTab =
                        categorycontroller.selectedSubCateIndex.value;
                    return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      ),
                      itemCount: subCategoryList.length,
                      itemBuilder: (context, index) {
                        return SubCategoryTab(
                          isActive: selectedSubCateTab == index,
                          onTap: () {
                            categorycontroller.selectedSubCateIndex.value =
                                index;
                            log("Clicked");
                          },
                        );
                      },
                    );
                  }),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.47,
                    padding: EdgeInsets.only(
                      top: 10,
                      left: 10,
                      right: 10,
                      bottom: 10,
                    ),
                    decoration: BoxDecoration(
                      color: primaryExtraLightGreen,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    //  SubCategoryTab(),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      ),
                      itemCount: 60,
                      itemBuilder: (context, index) {
                        return SubSubCategoryTab(
                          onTap: () {
                            log("Clicked");
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: MyBottomNavigationBar(currentIndex: -1),
    );
  }
}
