import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Controllers/AddressController.dart';
import 'package:snapshop/Controllers/OrderController.dart';

class SelectPaymentMethods extends StatelessWidget {
  const SelectPaymentMethods({super.key});

  @override
  Widget build(BuildContext context) {
    OrderController orderController = Get.put(OrderController());
    AddressController addressController = Get.put(AddressController());

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Select a payment methods",
            style: TextStyle(
              color: black,
              fontFamily: "Outfit",
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Recomended for you",
                    style: TextStyle(
                      color: black,
                      fontFamily: "Outfit",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  SizedBox(height: 10),

                  //PAYMENT METHOD TILES
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: orderController.paymentMethodList,
                  ),
                  SizedBox(height: 60),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
