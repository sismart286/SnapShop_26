import 'package:flutter/material.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Widgets/SeeAllButton.dart';

Widget YourOrdersSection() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Your orders",
              style: TextStyle(
                color: black,
                fontFamily: "Outfit",
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),

            SeeAllButton(onTap: () {}),
          ],
        ),
        SizedBox(height: 5),
        Container(
          height: 160,
          width: double.infinity,
          decoration: BoxDecoration(
            color: extraLightGrey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 15,
              top: 8.0,
              bottom: 8.0,
              right: 5,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(AssetsImage.book, fit: BoxFit.contain),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        AssetsImage.tshirt_1,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
