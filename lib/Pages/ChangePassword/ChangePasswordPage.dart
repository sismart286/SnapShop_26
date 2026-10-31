import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Pages/ChangePassword/VerifyPassOtpPage.dart';
import 'package:snapshop/Widgets/GreenBackButton.dart';
import 'package:snapshop/Widgets/MyDivider.dart';
import 'package:snapshop/Widgets/MyTextField.dart';

class ChangePasswordPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGrey,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(children: [GreenBackButton()]),
                  Image.asset(AssetsImage.password2, width: 130),
                  SizedBox(height: 10),
                  Text(
                    "Change Password",
                    style: TextStyle(
                      fontFamily: "Outfit",
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: black,
                    ),
                  ),
                  Text(
                    "Manage your saved addresses. Set deafult address and edit.",
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
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Old Password",
                                  style: TextStyle(
                                    fontFamily: "Outfit",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: white,
                                hintText: "Enter Old Password",
                                hintStyle: TextStyle(
                                  fontFamily: "Outfit",
                                  fontWeight: FontWeight.w600,
                                ),

                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                suffixIcon: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Skip",
                                    style: TextStyle(
                                      fontFamily: "Outfit",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: primaryDeepGreen,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        MyTextField(
                          size: 0,
                          labelName: "New Password",
                          labelTextColor: white,
                          hintText: "New Password",
                          hideText: true,
                        ),
                        SizedBox(height: 10),
                        MyTextField(
                          size: 0,
                          labelName: "Confirm New Password",
                          labelTextColor: white,
                          hintText: "Confirm New Password",
                          hideText: true,
                        ),
                        SizedBox(height: 40),
                        CupertinoButton(
                          padding: EdgeInsets.symmetric(
                            horizontal: 75,
                            vertical: 16,
                          ),
                          borderRadius: BorderRadius.circular(22),
                          color: white,
                          onPressed: () {
                            Get.to(() => VerifyPasswordOtpPage());
                          },
                          child: Text(
                            "Change Password",
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
                        SizedBox(height: 5),

                        Text(
                          '"Your password is encrypted before it hits our servers."',
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: TextStyle(
                            fontFamily: "Outfit",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: white,
                          ),
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
