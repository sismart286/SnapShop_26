import 'package:flutter/material.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';

Widget OrderedProductTile() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
    margin: EdgeInsets.only(bottom: 10),
    decoration: BoxDecoration(
      color: extraLightGrey,
      borderRadius: BorderRadius.circular(10),
      border: BoxBorder.all(width: 1, color: midBlack),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 80,
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
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: black,
                      fontFamily: "Outfit",
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Delivered 18 October",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: black,
                      fontFamily: "Outfit",
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
