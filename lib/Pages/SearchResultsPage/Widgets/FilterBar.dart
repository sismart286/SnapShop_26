import 'package:flutter/material.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';

Widget FilterBar() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
    decoration: BoxDecoration(
      color: primaryExtraLightGreen,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: primaryDeepGreen,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Text(
                "Men",
                style: TextStyle(
                  color: white,
                  fontFamily: "Outfit",
                  fontSize: 15,
                ),
              ),
              SizedBox(width: 20),
              Image.asset(AssetsImage.dorpDownIcon, width: 12),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: primaryDeepGreen,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Text(
                "Tshirt",
                style: TextStyle(
                  color: white,
                  fontFamily: "Outfit",
                  fontSize: 15,
                ),
              ),
              SizedBox(width: 20),
              Image.asset(AssetsImage.dorpDownIcon, width: 12),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: primaryDeepGreen,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Text(
                "Size",
                style: TextStyle(
                  color: white,
                  fontFamily: "Outfit",
                  fontSize: 15,
                ),
              ),
              SizedBox(width: 20),
              Image.asset(AssetsImage.dorpDownIcon, width: 12),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: primaryDeepGreen,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Text(
                "Age",
                style: TextStyle(
                  color: white,
                  fontFamily: "Outfit",
                  fontSize: 15,
                ),
              ),
              SizedBox(width: 20),
              Image.asset(AssetsImage.dorpDownIcon, width: 12),
            ],
          ),
        ),
      ],
    ),
  );
}
