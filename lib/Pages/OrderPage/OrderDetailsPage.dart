import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Controllers/OrderController.dart';
import 'package:snapshop/Pages/OrderPage/ReternOrReplacePage.dart';
import 'package:snapshop/Pages/OrderPage/Widgets/ViewOrderDetailWidget.dart';
import 'package:snapshop/Pages/ProductPage/ProductPage.dart';
import 'package:snapshop/Widgets/CustomButton.dart';
import 'package:snapshop/Widgets/HomeSearchBar.dart';
import 'package:snapshop/Widgets/MyDivider.dart';

class OrderDetailsPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final OrderController orderController = Get.find<OrderController>();

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
        title: HomeSearchBar(barColor: white),
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(AssetsImage.macBook, width: 150),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: Text(
                        "MacBook Neo 13″ Laptop with A18 Pro chip: Built for AI and Apple Intelligence, Liquid Retina Display, 8GB Unified Memory, 256GB SSD Storage, 1080p FaceTime HD Camera; Indigo",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                CupertinoButton(
                  onPressed: () {
                    Get.to(() => ProductPage());
                  },
                  color: primaryDeepGreen,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Buy it again",
                        style: TextStyle(
                          color: white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios, color: white),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: primaryGreen,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(Icons.check, color: white),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Delivered 18 October",
                          style: TextStyle(
                            color: black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                MyDivider(),
                SizedBox(height: 5),
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rate this product",
                          style: TextStyle(
                            color: black,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          height: 50,
                          padding: EdgeInsets.symmetric(horizontal: 2),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(58, 255, 255, 255),
                            borderRadius: BorderRadius.circular(20),
                            border: BoxBorder.all(width: 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              5,
                              (index) => InkWell(
                                onTap: () {},
                                child: Icon(
                                  index < 4 ? Icons.star : Icons.star_border,
                                  color: Colors.orange,
                                  size: 50,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: primaryGreen,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "Write a product review",
                                      style: TextStyle(
                                        color: white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(
                                      CupertinoIcons.chevron_down,
                                      size: 20,
                                      color: white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 12),

                        // TRACK PACKAGE
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              backgroundColor: white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.vertical(
                                  top: Radius.circular(20),
                                ),
                              ),
                              builder: (context) {
                                return Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Obx(
                                      () => Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Tracking ID: 3215869475",
                                                style: TextStyle(
                                                  color: Colors.blue.shade900,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 15),
                                          SizedBox(
                                            height: 350,
                                            child: ListView.builder(
                                              itemCount: orderController
                                                  .shipmentTrackingList
                                                  .length,
                                              itemBuilder: (context, index) {
                                                final time =
                                                    DateFormat(
                                                      'd MMM, h:mm a',
                                                    ).format(
                                                      orderController
                                                          .shipmentTrackingList[index]
                                                          .time,
                                                    );
                                                return Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  spacing: 10,
                                                  children: [
                                                    SizedBox(
                                                      width: 120,
                                                      child: Text(
                                                        time,
                                                        style: TextStyle(
                                                          color: black,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 30,
                                                      child: VerticalDivider(
                                                        color: black,
                                                        width: 1,
                                                        thickness: 1,
                                                      ),
                                                    ),
                                                    SizedBox(width: 5),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          width: 200,
                                                          child: Text(
                                                            orderController
                                                                .shipmentTrackingList[index]
                                                                .status,

                                                            style: TextStyle(
                                                              color: midBlack,
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          orderController
                                                              .shipmentTrackingList[index]
                                                              .location,
                                                          style: TextStyle(
                                                            color:
                                                                primaryDeepGreen,
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),

                                                        SizedBox(height: 20),
                                                      ],
                                                    ),
                                                  ],
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: extraLightGrey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Track Package",
                                      style: TextStyle(
                                        color: black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "(Delivered by SnapShop)",
                                      style: TextStyle(
                                        color: black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Text(
                                      "Tracking ID: 3215869475",
                                      style: TextStyle(
                                        color: Colors.blue.shade900,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(
                                      CupertinoIcons.chevron_down,
                                      size: 20,
                                      color: black,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),

                        // RETURN OR REPLACE THIS ITEM
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              backgroundColor: white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20),
                                ),
                              ),
                              builder: (context) {
                                return Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      // RETURN ITEM
                                      CupertinoButton(
                                        onPressed: () {
                                          Get.to(
                                            () => ReternOrReplacePage(
                                              whichPage: "return",
                                            ),
                                          );
                                        },
                                        color: primaryGreen,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Return item",
                                              style: TextStyle(
                                                color: white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Icon(
                                              CupertinoIcons.chevron_forward,
                                              color: white,
                                            ),
                                          ],
                                        ),
                                      ),

                                      SizedBox(height: 10),

                                      // REPLACE ITEM
                                      CupertinoButton(
                                        onPressed: () {
                                          Get.to(
                                            () => ReternOrReplacePage(
                                              whichPage: "replace",
                                            ),
                                          );
                                        },
                                        color: primaryGreen,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Replace item",
                                              style: TextStyle(
                                                color: white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Icon(
                                              CupertinoIcons.chevron_forward,
                                              color: white,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: extraLightGrey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Return or Replace this item",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "Eligible till 28 October",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(
                                  CupertinoIcons.chevron_down,
                                  size: 25,
                                  color: black,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),

                        // VIEW ORDER DETAILS
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              backgroundColor: bgGrey,
                              constraints: BoxConstraints(
                                maxHeight:
                                    MediaQuery.of(context).size.height / 1.17,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.vertical(
                                  top: Radius.circular(20),
                                ),
                              ),
                              builder: (context) {
                                return SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 10,
                                          vertical: 5,
                                        ),
                                        child: Row(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Order Number:  41327486456548",
                                                  style: TextStyle(
                                                    fontFamily: "Outfit",
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Spacer(),
                                            InkWell(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                  bottom: 10,
                                                ),
                                                padding: EdgeInsets.all(7),
                                                decoration: BoxDecoration(
                                                  color: lightGrey,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Icon(
                                                  CupertinoIcons.xmark,
                                                  color: black,
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      ViewOrderDetailsWidget(
                                        orderController: orderController,
                                      ),
                                      SizedBox(height: 15),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: extraLightGrey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "View Order Details",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "Price, Address, Payment method",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(
                                  CupertinoIcons.chevron_down,
                                  size: 25,
                                  color: black,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),

                        // DOWNLOAD INVOICE
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              backgroundColor: bgGrey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20),
                                ),
                              ),
                              builder: (context) {
                                return Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Select a document you want to download.",
                                            style: TextStyle(
                                              color: black,
                                              fontSize: 16,
                                              fontFamily: "Outfit",
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 8),
                                      // Download Invoice
                                      Column(
                                        spacing: 10,
                                        children: orderController
                                            .downloadOrderDocumentList
                                            .asMap()
                                            .entries
                                            .map((entry) {
                                              final index = entry.key;
                                              return Obx(() {
                                                bool
                                                isSelected = orderController
                                                    .selectedDownloadOrderDocument(
                                                      index,
                                                    );
                                                return SizedBox(
                                                  width: 350,
                                                  child: CupertinoButton(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                          horizontal: 10,
                                                          vertical: 15,
                                                        ),
                                                    onPressed: () {
                                                      orderController
                                                          .downloadOrderDocumentIndex(
                                                            index,
                                                          );
                                                    },
                                                    color: lightGrey,
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          padding:
                                                              EdgeInsets.all(
                                                                10,
                                                              ),
                                                          decoration: BoxDecoration(
                                                            color: isSelected
                                                                ? primaryDeepGreen
                                                                : bgGrey,
                                                            border:
                                                                BoxBorder.all(
                                                                  width: 1,
                                                                  color: black,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  100,
                                                                ),
                                                          ),
                                                        ),
                                                        SizedBox(width: 20),
                                                        Text(
                                                          orderController
                                                              .downloadOrderDocumentList[index],
                                                          style: TextStyle(
                                                            color: black,
                                                            fontFamily:
                                                                "Outfit",
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              });
                                            })
                                            .toList(),
                                      ),
                                      SizedBox(height: 20),
                                      SizedBox(
                                        width: 300,
                                        child: CupertinoButton(
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 10,
                                            vertical: 15,
                                          ),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          color: primaryGreen,
                                          child: Text(
                                            "Download Document",
                                            style: TextStyle(
                                              color: white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: extraLightGrey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Download Documens",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "Invoice, Warrenty Document/Pslip",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(
                                  CupertinoIcons.chevron_down,
                                  size: 25,
                                  color: black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                //RECOMMENDED PRODUCTS
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: orderController.recommendedProductList
                        .asMap()
                        .entries
                        .map((entry) {
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
                                      child: Image.asset(
                                        AssetsImage.iPhone,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                    ),
                                    child: Text(
                                      "iPhone 17 Pro, Blue (8GB, 128GB)",
                                      maxLines: 2,
                                      // textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(AssetsImage.rupee, width: 16),
                                      Text(
                                        "1,34,000",
                                        maxLines: 2,
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 2,
                                        ),
                                        decoration: BoxDecoration(
                                          color: primaryLightGreen,
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,

                                          children: [
                                            Text(
                                              "06:33:23",
                                              maxLines: 2,
                                              textAlign: TextAlign.center,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Transform.translate(
                                              offset: Offset(0, -4),
                                              child: Text(
                                                "to end offer",
                                                maxLines: 2,
                                                textAlign: TextAlign.center,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        })
                        .toList(),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
