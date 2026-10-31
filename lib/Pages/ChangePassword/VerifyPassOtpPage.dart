import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Pages/ChangePassword/PassUpdateSuccessPage.dart';
import 'package:snapshop/Widgets/GreenBackButton.dart';
import 'package:snapshop/Pages/ChangePassword/Widgets/OtpField.dart';
import 'package:snapshop/Widgets/MyDivider.dart';

class VerifyPasswordOtpPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGrey,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 10,
                left: 10,
                top: 0,
                bottom: 5,
              ),
              child: Column(
                children: [
                  Row(children: [GreenBackButton()]),
                  Image.asset(AssetsImage.password, width: 115),
                  SizedBox(height: 10),
                  Text(
                    "Verify Your Identity",
                    style: TextStyle(
                      fontFamily: "Outfit",
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: black,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "We’ve sent a 4-digit verification code to [+91 XXXXX-XX123] to ensure your account stays secure.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Outfit",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: black,
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  color: primaryDeepGreen,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Image.asset(AssetsImage.securePassword, width: 110),
                        SizedBox(height: 10),
                        Text(
                          '"Please do not share this code with anyone, including our support team. Our staff will never ask for your OTP."',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Outfit",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: white,
                          ),
                        ),
                        SizedBox(height: 30),
                        OtpField(),
                        SizedBox(height: 30),
                        CupertinoButton(
                          padding: EdgeInsets.symmetric(
                            horizontal: 75,
                            vertical: 16,
                          ),
                          borderRadius: BorderRadius.circular(22),
                          color: white,
                          onPressed: () {
                            Get.to(() => PasswordUpdateSuccessPage());
                          },
                          child: Text(
                            "Verify OTP",
                            style: TextStyle(
                              fontFamily: "Outfit",
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: primaryDeepGreen,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        MyDivider(length: 70),
                        // SizedBox(height: 5),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '"Didn’t receive the code?"',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              style: TextStyle(
                                fontFamily: "Outfit",
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: white,
                              ),
                            ),
                            SizedBox(width: 5),
                            InkWell(
                              onTap: () {
                                log("Clicked!");
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 5,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Text(
                                  "Resend OTP",
                                  style: TextStyle(
                                    fontFamily: "Outfit",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: primaryDeepGreen,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
