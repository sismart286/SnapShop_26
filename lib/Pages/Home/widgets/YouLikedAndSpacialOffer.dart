import 'package:flutter/material.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Widgets/MyDivider.dart';

Widget youLikedAndSpacialOffer() {
  return Container(
    decoration: BoxDecoration(color: primaryExtraLightGreen),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "You Liked",
                    style: TextStyle(
                      fontFamily: "Outfit",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 120,
                    width: 115,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(21),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(AssetsImage.iPhone),
                    ),
                  ),
                  SizedBox(
                    height: 120,
                    width: 115,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(21),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(AssetsImage.iPhone),
                    ),
                  ),
                  SizedBox(
                    height: 120,
                    width: 115,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(21),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(AssetsImage.iPhone),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          MyDivider(),
          // s

          SizedBox(height: 10),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today's Offer",
                    style: TextStyle(
                      fontFamily: "Outfit",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      color: primaryDeepGreen,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          SizedBox(
                            height: 120,
                            width: 115,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(21),
                                side: BorderSide(
                                  color: primaryNormalGreen,
                                  width: 2,
                                ),
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: Image.asset(AssetsImage.iPhone),
                            ),
                          ),

                          Positioned(
                            bottom: -7,
                            left: 0,
                            right: 0,
                            child: Center(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 5,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  color: primaryLightGreen,
                                  borderRadius: BorderRadius.circular(21),
                                ),
                                child: Text(
                                  "Upto 40% Off",
                                  style: TextStyle(
                                    fontFamily: "Outfit",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 5),

                      Text(
                        "on Shoes",
                        style: TextStyle(
                          fontFamily: "Outfit",
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          SizedBox(
                            height: 120,
                            width: 115,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(21),
                                side: BorderSide(
                                  color: primaryNormalGreen,
                                  width: 2,
                                ),
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: Image.asset(AssetsImage.iPhone),
                            ),
                          ),

                          Positioned(
                            bottom: -7,
                            left: 0,
                            right: 0,
                            child: Center(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 5,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  color: primaryLightGreen,
                                  borderRadius: BorderRadius.circular(21),
                                ),
                                child: Text(
                                  "Upto 40% Off",
                                  style: TextStyle(
                                    fontFamily: "Outfit",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 5),

                      Text(
                        "on Shoes",
                        style: TextStyle(
                          fontFamily: "Outfit",
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          SizedBox(
                            height: 120,
                            width: 115,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(21),
                                side: BorderSide(
                                  color: primaryNormalGreen,
                                  width: 2,
                                ),
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: Image.asset(AssetsImage.iPhone),
                            ),
                          ),

                          Positioned(
                            bottom: -7,
                            left: 0,
                            right: 0,
                            child: Center(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 5,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  color: primaryLightGreen,
                                  borderRadius: BorderRadius.circular(21),
                                ),
                                child: Text(
                                  "Upto 40% Off",
                                  style: TextStyle(
                                    fontFamily: "Outfit",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 5),

                      Text(
                        "on Shoes",
                        style: TextStyle(
                          fontFamily: "Outfit",
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
