import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Pages/Home/HomePage.dart';
import 'package:snapshop/Widgets/CustomButton.dart';

class OrderConfirmedPage extends StatelessWidget {
  const OrderConfirmedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: Container(
        padding: EdgeInsets.only(top: 50, left: 10, right: 10),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(gradient: primaryGradientGreen),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [Image.asset(AssetsImage.snapshopLogo2, width: 100)]),

            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 40),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: TweenAnimationBuilder<double>(
                    tween: Tween(begin: 0.0, end: 1.0),
                    duration: const Duration(milliseconds: 600),
                    curve: Curves.elasticOut,
                    builder: (context, value, child) {
                      return Transform.scale(
                        scale: value,
                        child: Opacity(
                          opacity: value.clamp(0.0, 1.0),
                          child: child,
                        ),
                      );
                    },
                    child: Image.asset(AssetsImage.checkIcon, width: 65),
                  ),
                ),
                SizedBox(height: 18),
                Text(
                  "Order Confirmed",
                  style: TextStyle(
                    color: white,
                    fontFamily: "Outfit",
                    fontWeight: FontWeight.w500,
                    fontSize: 26,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "High five! Your order is successfully placed. Keep an eye on your inbox (Email) for updates. We know you’re going to love it!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: white,
                    fontFamily: "Outfit",
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ],
            ),

            Column(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: white,
                    side: BorderSide(color: primaryGreen, width: 1.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    "See orders",
                    style: TextStyle(
                      color: primaryDeepGreen,
                      fontFamily: "Outfit",
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                CustomButton(
                  btnColor: primaryGreen,
                  radius: 20,
                  height: 50,
                  width: 220,
                  btnName: "Go to home",
                  btnTextWeight: FontWeight.w500,
                  btnTextSize: 18,
                  onTap: () {
                    Get.to(() => HomePage());
                  },
                ),
                SizedBox(height: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
