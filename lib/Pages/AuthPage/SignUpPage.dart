import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Widgets/MyTextField.dart';
import 'package:snapshop/Widgets/PrimaryButton.dart';

class SignUpPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isChecked = false.obs;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(gradient: primaryGradientGreen),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Create a new account",
                    style: TextStyle(
                      color: white,
                      fontFamily: "Outfit",
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 25),
                  Image.asset(AssetsImage.snapshopBigLogo, width: 200),
                  SizedBox(height: 25),
                  MyTextField(
                    size: 30,
                    labelName: "Name",
                    hintText: "Full Name",
                  ),
                  SizedBox(height: 15),
                  MyTextField(
                    size: 30,
                    labelName: "Email",
                    hintText: "Email Address",
                  ),
                  SizedBox(height: 15),
                  MyTextField(
                    size: 30,
                    labelName: "Password",
                    hintText: "Password",
                    hideText: true,
                  ),
                  SizedBox(height: 15),
                  MyTextField(
                    size: 30,
                    labelName: "Password",
                    hintText: "Confirm Password",
                    hideText: true,
                  ),

                  Row(
                    children: [
                      Obx(
                        () => Checkbox(
                          value: isChecked.value,
                          activeColor: primaryNormalGreen,
                          // checkColor: white,
                          fillColor: WidgetStateProperty.resolveWith((
                            Set<WidgetState> states,
                          ) {
                            if (states.contains(WidgetState.selected)) {
                              return primaryNormalGreen;
                            }
                            return white;
                          }),
                          onChanged: (value) {
                            isChecked.value = value ?? false;
                          },
                        ),
                      ),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color: black,
                              fontSize: 14,
                              fontFamily: "Outfit",
                              fontWeight: FontWeight.w400,
                            ),
                            children: [
                              TextSpan(
                                text: "By clicking on “sign up”, you are agreeing to the SnapShop’s ",
                              ),
                              TextSpan(
                                text: "Terms of Service",
                                style: TextStyle(
                                  color: primaryDeepGreen,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextSpan(text: " and "),
                              TextSpan(
                                text: "Privacy Policy.",
                                style: TextStyle(
                                  color: primaryDeepGreen,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  PrimaryButton(
                    onPressed: () {},
                    btnName: "Sign Up",
                    width: 200,
                    height: 55,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Or",
                      style: TextStyle(
                        fontFamily: "Outfit",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    height: 55,
                    decoration: BoxDecoration(
                      color: white,
                      border: BoxBorder.all(width: 1.5, color: black),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(AssetsImage.googleLogoicon, width: 30),
                        Text(
                          "Sign Up with your Google account",
                          style: TextStyle(
                            fontFamily: "Outfit",
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 200,
                    height: 40,
                    child: CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      color: white,

                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          fontFamily: "Outfit",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
