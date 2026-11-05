import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Controllers/OrderController.dart';
import 'package:snapshop/Pages/CategoryPage/CategoryPage.dart';
import 'package:snapshop/Pages/OrderPage/OrderDetailsPage.dart';
import 'package:snapshop/Pages/OrderPage/Widgets/OrderedProductTile.dart';
import 'package:snapshop/Widgets/CustomButton.dart';
import 'package:snapshop/Widgets/HomeSearchBar.dart';
import 'package:snapshop/Widgets/MyBottomNavigationBar.dart';

class YourOrdersPage extends StatelessWidget {
  const YourOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    OrderController orderController = Get.put(OrderController());

    return Scaffold(
      backgroundColor: primaryGreen,
      appBar: AppBar(
        backgroundColor: primaryGreen,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Image.asset(AssetsImage.backIcon, width: 23, color: white),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(AssetsImage.orderBoxIcon, color: white, width: 23),
            SizedBox(width: 10),
            Text(
              "Your Orders",
              style: TextStyle(
                color: white,
                fontFamily: "Outfit",
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: bgGrey,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            // IF NO ORDERS
            Expanded(
              child: Obx(
                () => orderController.yourOrdersList.isEmpty
                    ? Column(
                        children: [
                          SizedBox(height: 140),
                          Image.asset(AssetsImage.noOrdersIcon, width: 130),
                          SizedBox(height: 10),
                          Text(
                            "You have no orders.",
                            style: TextStyle(
                              color: black,
                              fontFamily: "Outfit",
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 15),
                          CustomButton(
                            width: 150,
                            btnName: "Explore",
                            btnTextWeight: FontWeight.w500,
                            onTap: () {
                              Get.to(() => CategoryPage());
                            },
                          ),
                        ],
                      )
                    // IF USER ORDERED SOMETHING
                    : Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5),
                            Text(
                              "Your All Orders",
                              style: TextStyle(
                                color: black,
                                fontFamily: "Outfit",
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 15),
                            Expanded(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                  children: [
                                    Column(
                                      children: orderController.yourOrdersList
                                          .asMap()
                                          .entries
                                          .map((entry) {
                                            return InkWell(
                                              onTap: () {
                                                Get.to(
                                                  () => OrderDetailsPage(),
                                                );
                                              },
                                              child: OrderedProductTile(),
                                            );
                                          })
                                          .toList(),
                                    ),
                                    SizedBox(height: 60),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: MyBottomNavigationBar(currentIndex: 3),
    );
  }
}
