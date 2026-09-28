import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Controllers/BottonNavBarController.dart';

Widget MyBottomNavigationBar(List<String> bottomNavIcons) {
  BottonNavBarController bottonNavBarController = Get.put(
    BottonNavBarController(),
  );
  bool isActive = false;

  return Container(
    height: 60,
    margin: EdgeInsets.symmetric(horizontal: 16),
    decoration: BoxDecoration(
      color: lowBlack,
      borderRadius: BorderRadius.circular(40),
      border: Border.all(color: const Color(0xFF00E676), width: 1.5),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: bottomNavIcons.asMap().entries.map((entry) {
        int index = entry.key;
        return Obx(() {
          isActive = bottonNavBarController.isSelected(index);
          return InkWell(
            onTap: () {
              bottonNavBarController.selectedIndex.value = index;
              log("bottomNavIcon is clicked! ${entry.key}");
            },
            child: Container(
              padding: EdgeInsets.all(10),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: isActive ? primaryNormalGreen : white,

                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                bottomNavIcons[entry.key],
                color: isActive ? white : black,
                fit: BoxFit.cover,
              ),
            ),
          );
        });
      }).toList(),
    ),
  );
}
