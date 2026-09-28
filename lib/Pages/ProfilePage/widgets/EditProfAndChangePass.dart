import 'package:flutter/material.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Widgets/CustomButton.dart';

Widget EditProfileAndChangePasswordSection() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
    margin: EdgeInsets.only(top: 55, right: 15),
    decoration: BoxDecoration(
      color: extraLightGrey,
      border: BoxBorder.all(color: primaryGreen, width: 1.5),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomButton(
          height: 28,
          width: 95,
          radius: 10,
          btnTextColor: primaryNormalGreen,
          btnTextSize: 13,
          btnColor: midBlack,
          btnName: "Edit Profile",
        ),
        SizedBox(height: 15),
        CustomButton(
          height: 28,
          width: 138,
          radius: 10,
          btnTextColor: primaryNormalGreen,
          btnTextSize: 13,
          btnColor: midBlack,
          btnName: "Change Password",
        ),
      ],
    ),
  );
}
