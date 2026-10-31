import 'package:flutter/material.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Widgets/MiniEditButton.dart';

Widget AddressSection({
  double? horizontalPadding = 15,
  String? addressBoxName = "Default address",
}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: horizontalPadding!),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          addressBoxName!,
          style: TextStyle(
            color: black,
            fontFamily: "Outfit",
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 5),
        Container(
          height: 170,
          width: double.infinity,

          decoration: BoxDecoration(
            color: extraLightGrey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: [
              MiniEditButton(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 10,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Home",
                          style: TextStyle(
                            color: primaryDeepGreen,
                            fontFamily: "Outfit",
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Dist - Charaideo, Pin code - 785689, State - Assam, India, Sonari town, near buddha vihar",
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: black,
                        fontFamily: "Outfit",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
