import 'package:flutter/material.dart';
import 'package:snapshop/Config/Colors.dart';

Widget DateOfBirthAndGenderSection() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Date of birth",
              style: TextStyle(
                color: black,
                fontFamily: "Outfit",
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 3),
            Container(
              decoration: BoxDecoration(
                color: primaryDeepGreen,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                child: Text(
                  "01/01/2002",
                  style: TextStyle(
                    color: white,
                    fontFamily: "Outfit",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
        Column(
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
            SizedBox(height: 3),
            Container(
              decoration: BoxDecoration(
                color: primaryDeepGreen,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 60,
                  vertical: 10,
                ),
                child: Text(
                  "Male",
                  style: TextStyle(
                    color: white,
                    fontFamily: "Outfit",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
