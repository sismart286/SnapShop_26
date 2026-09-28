import 'package:flutter/material.dart';
import 'package:snapshop/Config/Colors.dart';

Widget circleTab({required String image, required String labelName}) {
  return InkWell(
    onTap: () {},
    child: Column(
      children: [
        Container(
          height: 36,
          width: 36,
          decoration: BoxDecoration(
            color: primaryLightGreen,
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: EdgeInsets.all(6.0),
            child: Image.asset(image, fit: BoxFit.contain),
          ),
        ),
        SizedBox(height: 3),
        Text(
          labelName,
          style: TextStyle(
            fontFamily: "Outfit",
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}
