import 'package:flutter/material.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Widgets/PriceWidget.dart';

Widget SponsoredAdWidget() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15),
    margin: EdgeInsets.only(bottom: 10),
    decoration: BoxDecoration(color: primaryExtraLightGreen),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Sponsored",
          style: TextStyle(
            color: black,
            fontFamily: "Outfit",
            fontWeight: FontWeight.w400,
            fontSize: 13,
          ),
        ),
        Row(
          children: [
            Container(
              height: 100,
              // margin: EdgeInsets.symmetric(vertical: 0),
              constraints: BoxConstraints(minHeight: 130, minWidth: 130),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(10),
              ),

              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(AssetsImage.onWhey1),
              ),
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Optimum Nutrition (ON) RCB Limited Edition Gold Standard 100% Whey Protein Powder Double Rich Chocolate, 2 lb, 907 g, for Muscle Support & Recovery, Vegetarian - Primary Source Whey Protein Isolate",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: black,
                      fontFamily: "Outfit",
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "4.0",
                        style: TextStyle(
                          color: greyBlack,
                          fontFamily: "Outfit",
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 2),
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: midBlack,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Row(
                          children: List.generate(
                            5,
                            (index) => Icon(
                              index < 4 ? Icons.star : Icons.star_border,
                              color: Colors.amber,
                              size: 18,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "(11.2k)",
                        style: TextStyle(
                          color: midBlack,
                          fontFamily: "Outfit",
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "1.2K+ bought in last month",
                    style: TextStyle(
                      color: black,
                      fontFamily: "Outfit",
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  Row(
                    children: [
                      PriceWidget(price: "2599"),
                      SizedBox(width: 5),
                      Text(
                        "46% Off",
                        style: TextStyle(
                          color: Colors.red,
                          fontFamily: "Outfit",
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2),
                  Row(
                    children: [
                      Text(
                        "Brand: ",
                        style: TextStyle(
                          color: black,
                          fontFamily: "Outfit",
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Imsa Moda:",
                        style: TextStyle(
                          color: primaryDeepGreen,
                          fontFamily: "Outfit",
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
