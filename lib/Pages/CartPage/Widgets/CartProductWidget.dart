import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Controllers/CartController.dart';
import 'package:snapshop/Widgets/PriceWidget.dart';

Widget CartProductWidget() {
  CartController cartController = Get.put(CartController());

  return Column(
    children: cartController.cartItemsList.map<Widget>((item) {
      return Container(
        margin: EdgeInsets.only(bottom: 10),
        constraints: BoxConstraints(minHeight: 60),
        decoration: BoxDecoration(color: primaryExtraLightGreen),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 140,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  constraints: BoxConstraints(minHeight: 140, minWidth: 140),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(AssetsImage.onWhey1),
                  ),
                ),
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
                          fontSize: 16,
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
                      SizedBox(height: 10),
                      Text(
                        "Free Delivery",
                        style: TextStyle(
                          color: Colors.blue,
                          fontFamily: "Outfit",
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          onTap: () {
                            cartController.decrement();
                          },
                          child: Icon(Icons.remove, size: 18),
                        ),
                        SizedBox(width: 15),
                        Obx(
                          () => Text(
                            "${cartController.quantity.value}",
                            style: TextStyle(
                              color: black,
                              fontFamily: "Outfit",
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        InkWell(
                          onTap: () {
                            cartController.increment();
                          },
                          child: Icon(Icons.add, size: 18),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.delete, color: Colors.red, size: 20),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }).toList(),
  );
}
