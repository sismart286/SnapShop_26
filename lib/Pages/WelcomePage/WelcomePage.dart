import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Widgets/PrimaryButton.dart';

class WelcomePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: primaryGradientGreen),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 60),
                      Image.asset(AssetsImage.framePhone, width: 110),
                      SizedBox(height: 20),
                      Image.asset(AssetsImage.frameMacBook, width: 110),
                    ],
                  ),
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(0),
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                        child: Image.asset(
                          AssetsImage.frameGirlDress,
                          width: 108,
                          height: 160,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 20),
                      Image.asset(AssetsImage.frameBook, width: 110),
                      SizedBox(height: 60),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(height: 60),
                      Image.asset(AssetsImage.frameWatch, width: 110),
                      SizedBox(height: 20),
                      Image.asset(AssetsImage.frameWhey, width: 110),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 25),
              Image.asset(AssetsImage.snapshopBigLogo, width: 200),
              SizedBox(height: 10),
              Text(
                "Snap the best deals",
                style: TextStyle(
                  color: primaryDeepGreen,
                  fontSize: 30,
                  fontFamily: "Outfit",
                  fontWeight: FontWeight.w700,
                ),
              ),
              Transform.translate(
                offset: Offset(0, -5),
                child: Text(
                  "on everything you love",

                  style: TextStyle(
                    color: white,
                    fontSize: 24,
                    fontFamily: "Outfit",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 122,
                width: 332,
                child: Text(
                  "Welcome to SnapShop. Millions of products, unbeatable prices, and effortless delivery. Tap below to unlock a smarter, faster way to shop everything you need",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: primaryDeepGreen,
                    fontSize: 16,
                    fontFamily: "Outfit",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: PrimaryButton(
        onPressed: () {
          log("Let's Get Started button pressed!");
        },
        btnName: "Let's Get Started",
        width: 280,
        height: 55,
      ),
    );
  }
}
