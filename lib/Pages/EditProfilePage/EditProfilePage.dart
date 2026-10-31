import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Pages/EditProfilePage/Widgets/GenderSection.dart';
import 'package:snapshop/Pages/EditProfilePage/Widgets/NameAndDOBEdit.dart';
import 'package:snapshop/Pages/EditProfilePage/Widgets/PhoneEmailPasswordEditSection.dart';
import 'package:snapshop/Widgets/AddressSection.dart';
import 'package:snapshop/Widgets/PrimaryButton.dart';

class EditProfilePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
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
            Image.asset(AssetsImage.editProfileIcon, color: white, width: 25),
            SizedBox(width: 5),
            Text(
              "Edit Profile",
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
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            margin: EdgeInsets.only(top: 60),
            decoration: BoxDecoration(
              color: bgGrey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
          ),
          Positioned(
            top: 0,
            // left: 0,
            // right: 0,
            child: Column(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Center(
                        child: CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.transparent,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(AssetsImage.boyPic),
                            radius: 60,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: InkWell(
                          onTap: () {
                            log("Clicked!");
                          },
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: primaryDeepGreen,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.camera_alt,
                              color: white,
                              size: 25,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Profile Picture",
                  style: TextStyle(
                    color: midBlack,
                    fontFamily: "Outfit",
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              top: 170,
              bottom: 20,
              left: 15,
              right: 15,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  NameAndDOBEditSection(),
                  SizedBox(height: 15),
                  GenderSelection(),
                  SizedBox(height: 15),
                  PhoneEmailPasswordEditSection(),
                  SizedBox(height: 10),
                  AddressSection(horizontalPadding: 0),
                  SizedBox(height: 30),
                  PrimaryButton(
                    width: 250,
                    height: 55,
                    btnName: "Save Changes",
                    onPressed: () {},
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
