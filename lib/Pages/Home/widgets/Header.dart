import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Pages/AddressPage/AddressPage.dart';
import 'package:snapshop/Pages/ProfilePage/ProfilePage.dart';

Widget homeHeader(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(AssetsImage.snapBoxLogo, width: 50),

            Image.asset(AssetsImage.snapshopLogo1, width: 100),
          ],
        ),
        Row(
          children: [
            InkWell(
              onTap: () {
                Get.to(() => AddressPage());
              },
              child: Row(
                children: [
                  Image.asset(AssetsImage.pin, width: 15),
                  SizedBox(width: 1),
                  Text(
                    "sonari, assam",
                    style: TextStyle(
                      fontFamily: "Outfit",
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 5),
                  Image.asset(AssetsImage.dropDown),
                ],
              ),
            ),

            SizedBox(width: 10),
            InkWell(
              onTap: () {
                Get.to(() => ProfilePage());
              },
              child: CircleAvatar(
                child: Image.asset(
                  AssetsImage.boyPic,
                  fit: BoxFit.contain,
                  width: 35,
                ),
              ),
            ),
            SizedBox(width: 8.0),
          ],
        ),
      ],
    ),
  );
}
