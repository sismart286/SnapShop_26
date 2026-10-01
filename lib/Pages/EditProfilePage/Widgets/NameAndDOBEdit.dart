import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:snapshop/Config/Colors.dart';

Widget NameAndDOBEditSection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Full Name",
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
          prefixIcon: Icon(Icons.person_outlined, size: 28),
          suffixIcon: IconButton(
            onPressed: () {
              log("Cliked!");
            },
            icon: Icon(Icons.edit),
          ),
        ),
      ),

      SizedBox(height: 15),
      Text(
        "Date of Birth",
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
          prefixIcon: Icon(Icons.calendar_today_outlined),
          suffixIcon: IconButton(
            onPressed: () {
              log("Cliked!");
            },
            icon: Icon(Icons.edit),
          ),
        ),
      ),
    ],
  );
}
