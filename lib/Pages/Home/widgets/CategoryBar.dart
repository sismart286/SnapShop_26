import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Pages/CategoryPage/CategoryPage.dart';
import 'package:snapshop/Pages/Home/widgets/CircleTab.dart';

Widget categoryBar() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    margin: EdgeInsets.only(left: 10),
    height: 65,
    width: 400,
    decoration: BoxDecoration(
      color: extraLightGrey,
      border: BoxBorder.all(color: primaryLightGreen, width: 1),
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(0),
        topLeft: Radius.circular(17),
        bottomLeft: Radius.circular(17),
        bottomRight: Radius.circular(0),
      ),
    ),
    child: ListView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      children: [
        circleTab(
          image: AssetsImage.tshirt,
          labelName: "Fashion",
          onTap: () {
            Get.to(() => CategoryPage());
          },
        ),
        SizedBox(width: 10),
        circleTab(
          image: AssetsImage.laptop,
          labelName: "Electronics",
          onTap: () {
            Get.to(() => CategoryPage());
          },
        ),
        SizedBox(width: 10),
        circleTab(
          image: AssetsImage.groceryIcon,
          labelName: "Grocery",
          onTap: () {
            Get.to(() => CategoryPage());
          },
        ),
        SizedBox(width: 10),
        circleTab(
          image: AssetsImage.bicepIcon,
          labelName: "   Health   ",
          onTap: () {
            Get.to(() => CategoryPage());
          },
        ),
        SizedBox(width: 10),
        circleTab(
          image: AssetsImage.glowingSkinIcon,
          labelName: "  Beauty  ",
          onTap: () {
            Get.to(() => CategoryPage());
          },
        ),
        SizedBox(width: 10),
        circleTab(
          image: AssetsImage.decoration,
          labelName: "Decoration",
          onTap: () {
            Get.to(() => CategoryPage());
          },
        ),
        SizedBox(width: 10),
        circleTab(
          image: AssetsImage.bookIcon,
          labelName: " Books ",
          onTap: () {
            Get.to(() => CategoryPage());
          },
        ),
        SizedBox(width: 10),
      ],
    ),
  );
}
