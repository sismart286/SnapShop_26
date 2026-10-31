import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Pages/ProductPage/ProductPage.dart';
import 'package:snapshop/Widgets/PriceWidget.dart';

Widget ProductBox() {
  return InkWell(
    onTap: () {
      Get.to(() => ProductPage());
    },
    child: SizedBox(
      width: 160,
      child: Column(
        children: [
          SizedBox(
            height: 160,
            width: 160,
            child: Card(
              color: bgGrey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(21),
              ),
              clipBehavior: Clip.antiAlias,
              child: Image.asset(AssetsImage.tshirt_1, fit: BoxFit.contain),
            ),
          ),
          const SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              "iPhone 17 Pro, Blue (8GB, 128GB)",
              maxLines: 2,
              // textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                PriceWidget(price: "1,34,000"),
                SizedBox(width: 8),
                Text(
                  "46% Off",
                  style: TextStyle(
                    color: primaryGreen,
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
    ),
  );
}
