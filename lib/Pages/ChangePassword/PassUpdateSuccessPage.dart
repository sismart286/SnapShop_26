import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Controllers/PasswordUpdateSuccessController.dart';
import 'package:snapshop/Widgets/PrimaryButton.dart';

class PasswordUpdateSuccessPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    PasswordUpdateSuccessController passwordUpdateSuccessController = Get.put(
      PasswordUpdateSuccessController(),
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bgGrey,
      appBar: AppBar(
        backgroundColor: bgGrey,
        title: Image.asset(AssetsImage.snapshopLogo1, width: 100),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(AssetsImage.shieldGif, width: 300),
                ),
              ],
            ),
            Text(
              "Password Changed",
              style: TextStyle(
                fontFamily: "Outfit",
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: black,
              ),
            ),
            Text(
              "Successfully!",
              style: TextStyle(
                fontFamily: "Outfit",
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: primaryGreen,
              ),
            ),
            Spacer(),
            PrimaryButton(
              onPressed: passwordUpdateSuccessController.goToProfile,
              btnName: "Go to Profile",
            ),
            SizedBox(height: 10),
            Obx(
              () => Text(
                '"Redirecting to Profile in  ${passwordUpdateSuccessController.seconds.value} seconds"',
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(
                  fontFamily: "Outfit",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: primaryDeepGreen,
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
