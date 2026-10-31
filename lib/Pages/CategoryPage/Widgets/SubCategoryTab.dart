import 'package:flutter/material.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';

Widget SubCategoryTab({bool isActive = false, VoidCallback? onTap}) {
  return InkWell(
    onTap: onTap,
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 5, bottom: 0, left: 3.5, right: 3.5),

          decoration: BoxDecoration(
            color: isActive ? primaryDeepGreen : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(15),
                child: Image.asset(AssetsImage.men, width: 50),
              ),
              Text(
                "Men",
                style: TextStyle(
                  color: isActive ? white : black,
                  fontFamily: "Outfit",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
