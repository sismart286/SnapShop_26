import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Controllers/OrderController.dart';
import 'package:snapshop/Pages/OrderPage/OrderConfirmedPage.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

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
        title: Obx(
          () => Text(
            (orderController.progressStepIndex.value == 0)
                ? "Select Address"
                : (orderController.progressStepIndex.value == 1)
                ? "Select Method"
                : "Confirm Your Order",
            style: TextStyle(
              color: white,
              fontFamily: "Outfit",
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          //ORDER PROGRESS BAR
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 6),
            margin: EdgeInsets.only(left: 35, right: 35),
            width: double.infinity,
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: orderController.orderProgressSteps
                    .asMap()
                    .entries
                    .map((entry) {
                      final index = entry.key;
                      bool isActive = orderController.isActive(index);
                      return InkWell(
                        onTap: () {
                          orderController.progressStepIndex.value = index;
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: lightGrey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: isActive
                              ? Container(
                                  decoration: BoxDecoration(
                                    color: primaryDeepGreen,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                )
                              : orderController.isDone(index)
                              ? Icon(
                                  Icons.check,
                                  color: primaryDeepGreen,
                                  size: 15,
                                )
                              : null,
                        ),
                      );
                    })
                    .toList(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 28, right: 10, top: 2, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Address",
                  style: TextStyle(
                    color: white,
                    fontFamily: "Outfit",
                    fontSize: 14,
                  ),
                ),
                SizedBox(width: 63),
                Text(
                  "Payments",
                  style: TextStyle(
                    color: white,
                    fontFamily: "Outfit",
                    fontSize: 14,
                  ),
                ),
                SizedBox(width: 40),
                Text(
                  "Confirm Order",
                  style: TextStyle(
                    color: white,
                    fontFamily: "Outfit",
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: bgGrey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 2, bottom: 0),
                child: Obx(() => orderController.orderProgressPages()),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CupertinoButton(
        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
        borderRadius: BorderRadius.circular(20),
        color: primaryDeepGreen,
        child: Obx(
          () => Text(
            orderController.progressStepIndex.value == 2
                ? orderController.paymentMethodIndex.value == 4
                      ? "Confirm Order"
                      : "Pay with card ***8080"
                : "Continue",
            style: TextStyle(
              color: white,
              fontFamily: "Outfit",
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        onPressed: () {
          if (orderController.progressStepIndex.value == 2) {
            Get.to(() => OrderConfirmedPage());
          }
          orderController.completeStep();
        },
      ),
    );
  }
}
