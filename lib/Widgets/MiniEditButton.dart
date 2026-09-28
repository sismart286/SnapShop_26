import 'package:flutter/material.dart';
import 'package:snapshop/Config/Colors.dart';

Widget MiniEditButton() {
  return Positioned(
    right: 0,
    child: InkWell(
      onTap: () {},
      child: Container(
        height: 30,
        width: 65,
        decoration: BoxDecoration(
          color: black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(0),
          ),
        ),
        child: Center(
          child: Text(
            "Edit",
            style: TextStyle(
              color: primaryNormalGreen,
              fontSize: 14,
              fontFamily: "Outfit",
            ),
          ),
        ),
      ),
    ),
  );
}
