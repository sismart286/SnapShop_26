import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Widgets/CustomButton.dart';

Widget PhoneEmailPasswordEditSection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Phone Number",
        style: TextStyle(
          color: black,
          fontFamily: "Outfit",
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(height: 5),
      TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          fillColor: extraLightGrey,
          prefixIcon: Icon(Icons.phone, size: 26),
        ),
      ),

      SizedBox(height: 15),
      Text(
        "Email Address",
        style: TextStyle(
          color: black,
          fontFamily: "Outfit",
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(height: 5),
      TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          fillColor: extraLightGrey,
          prefixIcon: Icon(Icons.email_outlined),
        ),
      ),
      SizedBox(height: 15),
      Text(
        "Password",
        style: TextStyle(
          color: black,
          fontFamily: "Outfit",
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(height: 5),
      TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          fillColor: extraLightGrey,
          prefixIcon: Icon(Icons.lock_outline),
          suffixIcon: IconButton(
            onPressed: () {
              log("Cliked!");
            },
            icon: Icon(Icons.visibility_outlined),
          ),
        ),
      ),
      SizedBox(height: 10),
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              height: 28,
              width: 138,
              radius: 10,
              btnTextColor: primaryNormalGreen,
              btnTextSize: 14,
              btnColor: midBlack,
              btnName: "Change Password",
              onTap: () {},
            ),
          ],
        ),
      ),
    ],
  );
}
