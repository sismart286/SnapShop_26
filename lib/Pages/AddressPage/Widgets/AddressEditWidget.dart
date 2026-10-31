import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Controllers/AddressController.dart';

Widget AddressEditWidget() {
  AddressController addressController = Get.put(AddressController());

  String limitWords(String text, int maxWords) {
    List<String> words = text.trim().split(RegExp(r'\s+'));
    if (words.length <= maxWords) return text;
    return '${words.take(maxWords).join(' ')}...';
  }

  bool isDefaultAddress = false;

  return Expanded(
    child: ListView.builder(
      itemCount: addressController.addressList.length,
      itemBuilder: (context, index) {
        return Obx(() {
          isDefaultAddress = addressController.isDefault(index);
          return Container(
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              color: extraLightGrey,
              borderRadius: BorderRadius.circular(13),
            ),
            constraints: BoxConstraints(minHeight: 200),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 25,
                right: 25,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
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
                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                  margin: EdgeInsets.symmetric(horizontal: 15),
                                  decoration: BoxDecoration(
                                    color: primaryDeepGreen,
                                    borderRadius: BorderRadius.circular(10),
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
                                      addressController.selectedIndex.value =
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
                        limitWords(
                          "Dist - Charaideo, Pin code - 785689, State - Assam, India, Sonari town, near buddha vihar",
                          150, // Maximum number of words allowed
                        ),
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: black,
                          fontFamily: "Outfit",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              foregroundColor: Colors.transparent,
                              elevation: 0,
                              padding: EdgeInsets.all(0),
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.edit_outlined,
                                  color: primaryDeepGreen,
                                  size: 20,
                                ),
                                SizedBox(width: 2),
                                Text(
                                  "Edit",
                                  style: TextStyle(
                                    color: primaryDeepGreen,
                                    fontFamily: "Outfit",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              foregroundColor: Colors.transparent,
                              elevation: 0,
                              padding: EdgeInsets.all(0),
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.delete_outline,
                                  color: Colors.red,
                                  size: 20,
                                ),
                                SizedBox(width: 2),
                                Text(
                                  "Delete",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontFamily: "Outfit",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
      },
    ),
  );
}
