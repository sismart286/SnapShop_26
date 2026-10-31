import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';

Widget GreenBackButton() {
  return InkWell(
    onTap: () {
      Get.back();
    },
    child: Container(
      height: 35,
      width: 45,
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
        color: primaryDeepGreen,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(AssetsImage.backIcon, color: white),
    ),
  );
}
