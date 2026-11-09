import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Controllers/AuthController.dart';
import 'package:snapshop/Pages/Home/HomePage.dart';
import 'package:snapshop/Widgets/AddressSection.dart';
import 'package:snapshop/Pages/ProfilePage/widgets/DOBAndGender.dart';
import 'package:snapshop/Pages/ProfilePage/widgets/EditProfAndChangePass.dart';
import 'package:snapshop/Pages/ProfilePage/widgets/PaymentMethods.dart';
import 'package:snapshop/Pages/ProfilePage/widgets/PhoneNumber.dart';
import 'package:snapshop/Pages/ProfilePage/widgets/WishlistSection.dart';
import 'package:snapshop/Pages/ProfilePage/widgets/YourOrders.dart';

class ProfilePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());

    return Scaffold(
      backgroundColor: primaryGreen,
      appBar: AppBar(
        backgroundColor: primaryGreen,
        leading: IconButton(
          onPressed: () {
            Get.offAll(() => HomePage());
          },
          icon: Image.asset(AssetsImage.backIcon, width: 23, color: white),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.person, color: white, size: 23),
            Text(
              "Your Profile",
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
        actions: [
          IconButton(
            onPressed: () {
              AlertDialog alertDialog = AlertDialog(
                title: Text(
                  "Do you want to logout?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                actionsAlignment: MainAxisAlignment.center,
                actionsPadding: const EdgeInsets.only(bottom: 16),
                actions: [
                  CupertinoButton(
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        color: primaryDeepGreen,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  CupertinoButton(
                    child: Text(
                      "Logout",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    onPressed: () {
                      authController.signOutUser();
                      log("User SignOut!");
                    },
                  ),
                ],
              );

              showDialog(context: context, builder: (context) => alertDialog);
            },
            icon: Icon(Icons.logout, color: white),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            margin: EdgeInsets.only(top: 40),
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
            left: 60,
            child: CircleAvatar(
              radius: 45,
              backgroundColor: Colors.red,
              child: CircleAvatar(
                backgroundImage: AssetImage(AssetsImage.boyPic),
                radius: 43,
              ),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 90, left: 35),
                    child: Column(
                      children: [
                        Text(
                          "Suman Singha",
                          style: TextStyle(
                            color: black,
                            fontFamily: "Outfit",
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "suman01@gmail.com",
                          style: TextStyle(
                            color: black,
                            fontFamily: "Outfit",
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),

                  EditProfileAndChangePasswordSection(),
                ],
              ),
              SizedBox(height: 15),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      DateOfBirthAndGenderSection(),
                      SizedBox(height: 20),
                      PhoneNumberSection(),
                      SizedBox(height: 15),
                      AddressSection(),
                      SizedBox(height: 15),
                      PaymentMethods(),
                      SizedBox(height: 15),
                      YourOrdersSection(),
                      SizedBox(height: 15),
                      WishlistSection(),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
