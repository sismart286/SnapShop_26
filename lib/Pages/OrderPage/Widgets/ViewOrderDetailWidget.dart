import 'package:flutter/material.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Controllers/OrderController.dart';

Widget ViewOrderDetailsWidget({required OrderController orderController}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  constraints: BoxConstraints(minHeight: 130, minWidth: 130),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(AssetsImage.onWhey6),
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ordered on",
                      style: TextStyle(
                        fontFamily: "Outfit",
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "12 October 2026",
                      style: TextStyle(
                        color: primaryDeepGreen,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Order delivered on",
                      style: TextStyle(
                        fontFamily: "Outfit",
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "12 October 2026",
                      style: TextStyle(
                        color: primaryDeepGreen,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Optimum Nutrition (ON) RCB Limited Edition Gold Standard 100% Whey Protein Powder Double Rich Chocolate, 2 lb, 907 g, for Muscle Support & Recovery, Vegetarian - Primary Source Whey Protein Isolate",
                  maxLines: 5,
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
              ],
            ),
          ],
        ),

        SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //TOTAL AMOUNT OF ALL BYUING PRODUCTS
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: const Color.fromARGB(24, 0, 100, 7),
                border: BoxBorder.all(color: primaryDeepGreen),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Items:",
                        style: TextStyle(
                          color: black,
                          fontFamily: "Outfit",
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        "2599/-",
                        style: TextStyle(
                          color: black,
                          fontFamily: "Outfit",
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery:",
                        style: TextStyle(
                          color: black,
                          fontFamily: "Outfit",
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        "-40",
                        style: TextStyle(
                          color: Colors.red,
                          fontFamily: "Outfit",
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        "0/-",
                        style: TextStyle(
                          color: black,
                          fontFamily: "Outfit",
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Marketpalce fees:",
                        style: TextStyle(
                          color: black,
                          fontFamily: "Outfit",
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        "5/-",
                        style: TextStyle(
                          color: black,
                          fontFamily: "Outfit",
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Order Total:",
                        style: TextStyle(
                          color: black,
                          fontFamily: "Outfit",
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        "2604/-",
                        style: TextStyle(
                          color: black,
                          fontFamily: "Outfit",
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),

            //YOUR PAYMENT METHOD
            Text(
              "Payment method",
              style: TextStyle(
                color: midBlack,
                fontFamily: "Outfit",
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 5),
            orderController.paymentMethodList[orderController
                .paymentMethodIndex
                .value],

            SizedBox(height: 5),

            //DELIVER ADDRESS
            Row(
              children: [
                Text(
                  "Delivery address",
                  style: TextStyle(
                    color: black,
                    fontFamily: "Outfit",
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: extraLightGrey,
                borderRadius: BorderRadius.circular(13),
              ),

              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 0,
                  left: 10,
                  right: 15,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                          SizedBox(height: 10),
                          Text(
                            "Dist - Charaideo, Pin code - 785689, State - Assam, India, Sonari town, near buddha vihar",
                            maxLines: 10,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: black,
                              fontFamily: "Outfit",
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
