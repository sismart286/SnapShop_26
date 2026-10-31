import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Controllers/OrderController.dart';
import 'package:snapshop/Widgets/CustomButton.dart';

class ReternOrReplacePage extends StatelessWidget {
  final String? whichPage;
  const ReternOrReplacePage({super.key, required this.whichPage});

  @override
  Widget build(BuildContext context) {
    OrderController orderController = Get.put(OrderController());
    RxBool isOtherReason = false.obs;

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
        title: Text(
          whichPage == "return"
              ? "Why are you returning this?"
              : "Want to replace this item?",
          style: TextStyle(
            color: white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            color: bgGrey,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      whichPage == "return"
                          ? "Choose your reson"
                          : "Why you want to replace",
                      style: TextStyle(
                        color: black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                whichPage == "replace"
                    ? Row(
                        children: [
                          Text(
                            "Select a valid reason",
                            style: TextStyle(
                              color: primaryDeepGreen,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      )
                    : SizedBox.shrink(),
                SizedBox(height: 10),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: orderController.returnResonsList.length,
                  itemBuilder: (context, index) {
                    return Obx(() {
                      final isSelectedReson = orderController
                          .selectedReturnReson(index);
                      return Column(
                        children: [
                          InkWell(
                            onTap: () {
                              orderController.returnResonIndex.value = index;
                              if (orderController.returnResonsList[index] ==
                                  "Other") {
                                isOtherReason.value = true;
                              } else {
                                isOtherReason.value = false;
                              }
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
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: isSelectedReson
                                          ? primaryDeepGreen
                                          : bgGrey,
                                      border: BoxBorder.all(width: 1),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                  SizedBox(width: 10),

                                  Text(
                                    orderController.returnResonsList[index],
                                    style: TextStyle(
                                      color: black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      );
                    });
                  },
                ),
                Obx(
                  () => isOtherReason.value
                      ? Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 0,
                          ),
                          decoration: BoxDecoration(
                            color: lightGrey,
                            border: BoxBorder.all(
                              width: 1.5,
                              color: primaryDeepGreen,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: TextField(
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                            maxLines: 6,
                            maxLength: 150,
                            decoration: InputDecoration(
                              hintText: "Write why are you returning...",
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              hintStyle: TextStyle(
                                color: black,
                                fontFamily: "Outfit",
                              ),
                            ),
                          ),
                        )
                      : SizedBox.shrink(),
                ),

                SizedBox(height: 15),

                whichPage == "replace"
                    ? Container(
                        margin: EdgeInsets.only(bottom: 20),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: primaryExtraLightGreen,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Upload defective item's photo",
                              style: TextStyle(
                                color: black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      color: primaryExtraLightGreen,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Icon(
                                      Icons.camera_alt,
                                      color: midBlack,
                                      size: 50,
                                    ),
                                  ),
                                ),

                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      color: primaryExtraLightGreen,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Icon(
                                      Icons.image_outlined,
                                      color: midBlack,
                                      size: 50,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      )
                    : SizedBox.shrink(),

                CustomButton(
                  radius: 15,
                  btnName: whichPage == "return"
                      ? "Return this item"
                      : "Replace this item",
                  btnTextSize: 18,
                  btnTextWeight: FontWeight.w500,
                  btnColor: primaryGreen,
                  onTap: () {
                    Navigator.pop(context);
                  },
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
