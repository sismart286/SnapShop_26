import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Pages/CartPage/CartPage.dart';
import 'package:snapshop/Pages/OrderPage/OrderPage.dart';
import 'package:snapshop/Pages/ProductPage/Widgets/ProductImagesWidget.dart';
import 'package:snapshop/Widgets/GreenBackButton.dart';
import 'package:snapshop/Widgets/PriceWidget.dart';

class ProductPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    double viewportFraction = 0.9;
    double slideGap = 10;
    double screenWidth = MediaQuery.of(context).size.width;
    double imageWidth = screenWidth * viewportFraction - slideGap;

    List<String> bannerImages = [
      AssetsImage.tshirt_1,
      AssetsImage.tshirt_2,
      AssetsImage.tshirt_3,
      AssetsImage.tshirt_4,
      AssetsImage.tshirt_5,
    ];
    List<Color> productColors = [
      Colors.black,
      Colors.red,
      Colors.green,
      Colors.yellow,
      Colors.blue,
    ];

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  ProductImagesWidget(bannerImages, context),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "NETCLICK Men's Plain Polycotton Relax Fit Round Neck Half Sleeve T-Shirt, Gym & Travel",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Outfit",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 5),
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

                            // RATINGS AS STARS
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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
                                InkWell(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                ),
                                SizedBox(width: 8),
                                InkWell(
                                  onTap: () {},
                                  child: Icon(Icons.share_outlined),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
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
                        Row(
                          children: [
                            Text(
                              "Store: ",
                              style: TextStyle(
                                color: black,
                                fontFamily: "Outfit",
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "Imsa Moda Store",
                              style: TextStyle(
                                color: primaryDeepGreen,
                                fontFamily: "Outfit",
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 8),

                        //PRICE AND DISCOUNT %
                        Row(
                          children: [
                            PriceWidget(
                              price: "390",
                              size: 20,
                              fontweight: FontWeight.w500,
                            ),
                            SizedBox(width: 5),
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

                        SizedBox(height: 5),

                        //SIZE
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Size",
                              style: TextStyle(
                                color: black,
                                fontFamily: "Outfit",
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: primaryExtraLightGreen,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    constraints: BoxConstraints(
                                      minHeight: 40,
                                      minWidth: 40,
                                    ),
                                    padding: EdgeInsets.all(5),
                                    margin: EdgeInsets.only(right: 15),
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: BoxBorder.all(
                                        color: primaryDeepGreen,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "M",
                                        style: TextStyle(
                                          color: black,
                                          fontFamily: "Outfit",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    constraints: BoxConstraints(
                                      minHeight: 40,
                                      minWidth: 40,
                                    ),
                                    padding: EdgeInsets.all(5),
                                    margin: EdgeInsets.only(right: 15),
                                    decoration: BoxDecoration(
                                      color: primaryDeepGreen,
                                      border: BoxBorder.all(
                                        color: primaryDeepGreen,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "L",
                                        style: TextStyle(
                                          color: white,
                                          fontFamily: "Outfit",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    constraints: BoxConstraints(
                                      minHeight: 40,
                                      minWidth: 40,
                                    ),
                                    padding: EdgeInsets.all(5),
                                    margin: EdgeInsets.only(right: 15),
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: BoxBorder.all(
                                        color: primaryDeepGreen,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "XL",
                                        style: TextStyle(
                                          color: black,
                                          fontFamily: "Outfit",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    constraints: BoxConstraints(
                                      minHeight: 40,
                                      minWidth: 40,
                                    ),
                                    padding: EdgeInsets.all(5),
                                    margin: EdgeInsets.only(right: 15),
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: BoxBorder.all(
                                        color: primaryDeepGreen,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "XXL",
                                        style: TextStyle(
                                          color: black,
                                          fontFamily: "Outfit",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10),

                        //COLORS
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Colors",
                              style: TextStyle(
                                color: black,
                                fontFamily: "Outfit",
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              spacing: 10,
                              children: productColors
                                  .map(
                                    (e) => Row(
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            height: 35,
                                            width: 35,
                                            decoration: BoxDecoration(
                                              color: lightGrey,
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                            padding: EdgeInsets.all(2),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: e,
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                              ),
                                              padding: EdgeInsets.all(5),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                  .toList(),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),

                        //About The Product
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "About",
                              style: TextStyle(
                                color: black,
                                fontFamily: "Outfit",
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              padding: EdgeInsets.only(
                                left: 20,
                                right: 20,
                                top: 10,
                                bottom: 5,
                              ),
                              decoration: BoxDecoration(
                                color: primaryExtraLightGreen,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "Soft Polycotton Fabric: Made from a breathable and lightweight polycotton blend for all-day comfort Relax Fit Design: Provides a loose and comfortable fit, allowing easy movement and   a relaxed feel Classic Round Neck Style: Timeless crew ne....",
                                    maxLines: 6,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: black,
                                      fontFamily: "Outfit",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
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
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 80),
                ],
              ),
            ),

            // GREEN BACK BUTTON
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: GreenBackButton(),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CupertinoButton(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            onPressed: () {
              Get.to(() => OrderPage());
            },
            color: primaryDeepGreen,
            child: Text(
              "Buy Now",
              style: TextStyle(
                color: white,
                fontFamily: "Outfit",
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          CupertinoButton(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            onPressed: () {
              Get.to(() => CartPage());
            },
            color: midBlack,
            child: Text(
              "Add To Cart",
              style: TextStyle(
                color: white,
                fontFamily: "Outfit",
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
