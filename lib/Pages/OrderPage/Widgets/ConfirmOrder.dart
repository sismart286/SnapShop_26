import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Controllers/OrderController.dart';
import 'package:snapshop/Pages/OrderPage/Widgets/BuyingProduct.dart';

class ConfirmOrder extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    OrderController orderController = Get.put(OrderController());

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Check and Confirm order",
            style: TextStyle(
              color: black,
              fontSize: 18,
              fontFamily: "Outfit",
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(height: 10),

        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Your products",
                    style: TextStyle(
                      color: black,
                      fontSize: 16,
                      fontFamily: "Outfit",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                BuyingProduct(),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      //TOTAL AMOUNT OF ALL BYUING PRODUCTS
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(24, 0, 100, 7),
                          border: BoxBorder.all(color: primaryDeepGreen),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                color: primaryDeepGreen,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                "Free delivery for orders above 500/-",
                                style: TextStyle(
                                  color: white,
                                  fontFamily: "Outfit",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
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
                          ],
                        ),
                      ),

                      SizedBox(height: 10),

                      //YOUR PAYMENT METHOD
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
                      SizedBox(height: 10),
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
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    color: primaryDeepGreen,

                                    border: BoxBorder.all(color: midBlack),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                              ),
                              SizedBox(width: 15),
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
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: black,
                                        fontFamily: "Outfit",
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          child: Text(
                                            "Know more",
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontFamily: "Outfit",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
