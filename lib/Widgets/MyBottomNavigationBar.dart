import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Pages/CartPage/CartPage.dart';
import 'package:snapshop/Pages/CustomerCarePage/CustomerCarePage.dart';
import 'package:snapshop/Pages/Home/HomePage.dart';
import 'package:snapshop/Pages/OrderPage/YourOrdersPage.dart';
import 'package:snapshop/Pages/WishListPage/WishListPage.dart';

Widget MyBottomNavigationBar({required int currentIndex}) {
  List<String> bottomNavIcons = [
    AssetsImage.homeIcon,
    AssetsImage.heartIcon,
    AssetsImage.shoppingCart,
    AssetsImage.orderIcon,
    AssetsImage.customerCare,
  ];

  return Container(
    height: 50,
    padding: EdgeInsets.symmetric(horizontal: 10),
    margin: EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
      color: lowBlack,
      borderRadius: BorderRadius.circular(40),
      border: Border.all(color: const Color(0xFF00E676), width: 1.5),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: bottomNavIcons.asMap().entries.map((entry) {
        int index = entry.key;
        bool isActive = index == currentIndex;
        return InkWell(
          onTap: () {
            if (index == currentIndex) return;
            if (index == 0) {
              Get.offAll(() => HomePage());
            } else if (index == 1) {
              Get.to(() => WishListPage());
            } else if (index == 2) {
              Get.to(() => CartPage());
            } else if (index == 3) {
              Get.to(() => YourOrdersPage());
            } else {
              Get.to(() => CustomerCarePage());
            }
          },
          child: Container(
            padding: EdgeInsets.all(10),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: isActive ? primaryNormalGreen : white,

              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset(
              bottomNavIcons[index],
              color: isActive ? white : black,
              fit: BoxFit.cover,
            ),
          ),
        );
      }).toList(),
    ),
  );
}
