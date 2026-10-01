import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Widgets/CustomButton.dart';

Widget GenderSelection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Gender",
        style: TextStyle(
          color: black,
          fontFamily: "Outfit",
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(height: 5),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomButton(
            btnColor: primaryDeepGreen,
            width: 100,
            height: 65,
            btnTextSize: 18,
            btnName: "Male",
            onTap: () {
              log("Cliked!");
            },
          ),
          CustomButton(
            btnColor: primaryDeepGreen,
            width: 100,
            height: 65,
            btnTextSize: 18,
            btnName: "Female",
            onTap: () {
              log("Cliked!");
            },
          ),
          CustomButton(
            btnColor: primaryDeepGreen,
            width: 100,
            height: 65,
            btnTextSize: 18,
            btnName: "Other",
            onTap: () {
              log("Cliked!");
            },
          ),
        ],
      ),
    ],
  );
}
