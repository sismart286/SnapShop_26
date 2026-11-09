import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Controllers/AuthController.dart';
import 'package:snapshop/Pages/AuthPage/SignUpPage.dart';
import 'package:snapshop/Widgets/MyTextField.dart';
import 'package:snapshop/Widgets/PrimaryButton.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  late final AuthController authController;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    authController = Get.isRegistered<AuthController>()
        ? Get.find<AuthController>()
        : Get.put(AuthController());
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> signIn() async {
    String response = await authController.signInUser(
      emailController.text.trim(),
      passwordController.text.trim(),
    );

    // signInUser navigates to HomePage on success, so this page is unmounted.
    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          response,
          style: const TextStyle(color: white, fontSize: 16),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(gradient: primaryGradientGreen),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hey, welcome back",
                          style: TextStyle(
                            color: white,
                            fontFamily: "Outfit",
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Sign In to your account",
                          style: TextStyle(
                            color: white,
                            fontFamily: "Outfit",
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Image.asset(AssetsImage.snapshopBigLogo, width: 200),
                    const SizedBox(height: 25),
                    Obx(
                      () => MyTextField(
                        controller: emailController,
                        size: 30,
                        labelName: "Email",
                        hintText: "Email address",
                        hideText: false,
                        readOnly: authController.isLoading.value,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Obx(
                      () => MyTextField(
                        controller: passwordController,
                        size: 30,
                        labelName: "Password",
                        hintText: "Password",
                        hideText: true,
                        readOnly: authController.isLoading.value,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const SizedBox(height: 20),
                    Obx(
                      () => authController.isLoading.value
                          ? CircularProgressIndicator(color: primaryDeepGreen)
                          : PrimaryButton(
                              onPressed: () async {
                                await signIn();
                              },
                              btnName: "Sign In",
                              width: 200,
                              height: 55,
                            ),
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
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        height: 55,
                        decoration: BoxDecoration(
                          color: white,
                          border: Border.all(width: 1.5, color: black),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(AssetsImage.googleLogoicon, width: 30),
                            Text(
                              "Sign In with your Google account",
                              style: TextStyle(
                                fontFamily: "Outfit",
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Obx(
                      () => SizedBox(
                        width: 200,
                        height: 40,
                        child: CupertinoButton(
                          padding: EdgeInsets.zero,
                          onPressed: authController.isLoading.value
                              ? null
                              : () {
                                  Get.to(() => const SignUpPage());
                                },
                          color: white,
                          child: Text(
                            "Create Account",
                            style: TextStyle(
                              fontFamily: "Outfit",
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
