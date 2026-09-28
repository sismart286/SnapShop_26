import 'package:flutter/material.dart';
import 'package:snapshop/Config/Colors.dart';

Widget PhoneNumberSection() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Phone number",
          style: TextStyle(
            color: black,
            fontFamily: "Outfit",
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 5),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: extraLightGrey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Text(
              "+00 7894563587",
              style: TextStyle(
                color: black,
                fontFamily: "Outfit",
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
