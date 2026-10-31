import 'package:flutter/material.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';

Widget CategoryTab({bool? isTabActive = false}) {
  return Container(
    padding: EdgeInsets.only(left: 12, right: 12, top: 10, bottom: 5),
    margin: EdgeInsets.only(bottom: 5),
    decoration: BoxDecoration(
      color: isTabActive! ? primaryDeepGreen : Colors.transparent,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: primaryLightGreen,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Image.asset(AssetsImage.tshirt, width: 28),
        ),
        SizedBox(height: 2),
        Text(
          "Fashion",
          style: TextStyle(
            color: isTabActive ? white : black,
            fontFamily: "Outfit",
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    ),
  );
}
