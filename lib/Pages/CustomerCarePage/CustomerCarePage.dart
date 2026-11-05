import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Controllers/CustomerCareController.dart';

class CustomerCarePage extends StatelessWidget {
  const CustomerCarePage({super.key});

  @override
  Widget build(BuildContext context) {
    CustomerCareController customerCareController = Get.put(
      CustomerCareController(),
    );
    return Scaffold(
      backgroundColor: primaryGreen,
      appBar: AppBar(
        backgroundColor: primaryGreen,
        automaticallyImplyLeading: false,
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
            Icon(Icons.support_agent, color: white, weight: 5, size: 30),
            SizedBox(width: 10),
            Text(
              "Customer Support",
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
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: bgGrey,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 20,
            right: 10,
            left: 10,
          ),
          child: Obx(() {
            return Column(
              spacing: 10,
              children: customerCareController.customerCareMsgList.reversed
                  .toList()
                  .asMap()
                  .entries
                  .map((entry) {
                    final msgIndex = entry.key;
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              constraints: BoxConstraints(maxWidth: 300),
                              padding: EdgeInsets.only(
                                right: 10,
                                left: 10,
                                top: 2,
                                bottom: 2,
                              ),
                              decoration: BoxDecoration(
                                color: primaryDeepGreen,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                              ),
                              child: Text(
                                customerCareController
                                    .customerCareMsgList[msgIndex],
                                style: TextStyle(
                                  color: white,
                                  fontFamily: "Outfit",
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Text(
                              "6:55 PM",
                              style: TextStyle(
                                color: midBlack,
                                fontFamily: "Outfit",
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  })
                  .toList(),
            );
          }),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.22,
              decoration: BoxDecoration(
                color: extraLightGrey,
                border: BoxBorder.all(width: 1, color: primaryNormalGreen),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Flexible(
                      child: TextField(
                        style: TextStyle(
                          color: black,
                          fontFamily: "Outfit and isf",
                        ),
                        decoration: InputDecoration(
                          counterText: "",
                          focusedBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintText: "Message",
                          hintStyle: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        minLines: 1,
                        maxLines: 5,
                        maxLength: 2000,
                        keyboardType: TextInputType.multiline,
                      ),
                    ),
                    SizedBox(width: 5),
                    InkWell(
                      onTap: () {},
                      child: Icon(Icons.camera_alt_outlined, color: greyBlack),
                    ),
                    SizedBox(width: 10),
                    InkWell(onTap: () {}, child: Icon(Icons.image_outlined)),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: primaryGreen,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(Icons.send, color: white, size: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
