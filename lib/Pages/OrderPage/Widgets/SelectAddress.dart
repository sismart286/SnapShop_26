import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Controllers/AddressController.dart';
import 'package:snapshop/Controllers/OrderController.dart';
import 'package:snapshop/Pages/AddressPage/AddressPage.dart';
import 'package:snapshop/Widgets/CustomButton.dart';

Widget SelectAddress() {
  OrderController orderController = Get.put(OrderController());
  AddressController addressController = Get.put(AddressController());

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Select a delivery address",
          style: TextStyle(
            color: black,
            fontFamily: "Outfit",
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 5),
        Text(
          "All addresses (2)",
          style: TextStyle(
            color: black,
            fontFamily: "Outfit",
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),

        SizedBox(height: 10),

        //ADDRESS TILE
        Expanded(
          child: ListView.builder(
            itemCount: addressController.addressList.length,
            itemBuilder: (context, index) {
              return Obx(() {
                bool isDefaultAddress = addressController.isDefault(index);

                bool isSelectedAddress = orderController.isSelectedAddress(
                  index,
                );

                return Container(
                  height: 150,
                  width: 150,
                  margin: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: extraLightGrey,
                    borderRadius: BorderRadius.circular(13),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                      left: 10,
                      right: 15,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            orderController.selectedAddressIndex.value = index;
                          },
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              color: isSelectedAddress
                                  ? primaryDeepGreen
                                  : bgGrey,
                              border: BoxBorder.all(color: midBlack),
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: isDefaultAddress
                                    ? MainAxisAlignment.start
                                    : MainAxisAlignment.spaceBetween,
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
                                  isDefaultAddress
                                      ? Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 8,
                                          ),
                                          margin: EdgeInsets.symmetric(
                                            horizontal: 15,
                                          ),
                                          decoration: BoxDecoration(
                                            color: primaryDeepGreen,
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                          child: Text(
                                            "Default",
                                            style: TextStyle(
                                              color: white,
                                              fontFamily: "Outfit",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        )
                                      : Align(
                                          alignment: Alignment.centerRight,
                                          child: InkWell(
                                            onTap: () {
                                              addressController
                                                      .selectedIndex
                                                      .value =
                                                  index;
                                            },
                                            child: Text(
                                              "Set Default",
                                              style: TextStyle(
                                                color: primaryDeepGreen,
                                                fontFamily: "Outfit",
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                ],
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
                                  CustomButton(
                                    btnName: "Edit",
                                    btnTextColor: primaryGreen,
                                    width: 55,
                                    height: 25,
                                    onTap: () {
                                      Get.to(() => AddressPage());
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              });
            },
          ),
        ),
      ],
    ),
  );
}
