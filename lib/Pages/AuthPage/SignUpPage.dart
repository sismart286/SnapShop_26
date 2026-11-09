import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Controllers/AuthController.dart';
import 'package:snapshop/Widgets/MyTextField.dart';
import 'package:snapshop/Widgets/PrimaryButton.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late final AuthController authController;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool isChecked = false;

  @override
  void initState() {
    super.initState();
    authController = Get.isRegistered<AuthController>()
        ? Get.find<AuthController>()
        : Get.put(AuthController());
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> signUp() async {
    String response = await authController.createUser(
      emailController.text.trim(),
      passwordController.text.trim(),
      confirmPasswordController.text.trim(),
      nameController.text.trim(),
    );

    // createUser navigates away on success, so this page is unmounted then.
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
        decoration: const BoxDecoration(gradient: primaryGradientGreen),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text(
                    "Create a new account",
                    style: TextStyle(
                      color: white,
                      fontFamily: "Outfit",
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Image.asset(AssetsImage.snapshopBigLogo, width: 200),
                  const SizedBox(height: 25),
                  Obx(
                    () => MyTextField(
                      size: 30,
                      labelName: "Name",
                      hintText: "Full Name",
                      controller: nameController,
                      readOnly: authController.isLoading.value,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Obx(
                    () => MyTextField(
                      size: 30,
                      labelName: "Email",
                      hintText: "Email Address",
                      controller: emailController,
                      readOnly: authController.isLoading.value,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Obx(
                    () => MyTextField(
                      size: 30,
                      labelName: "Password",
                      hintText: "Password",
                      hideText: true,
                      controller: passwordController,
                      readOnly: authController.isLoading.value,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Obx(
                    () => MyTextField(
                      size: 30,
                      labelName: "Confirm Password",
                      hintText: "Confirm Password",
                      hideText: true,
                      controller: confirmPasswordController,
                      readOnly: authController.isLoading.value,
                    ),
                  ),
                  Row(
                    children: [
                      Obx(
                        () => Checkbox(
                          value: isChecked,
                          activeColor: primaryNormalGreen,
                          fillColor: WidgetStateProperty.resolveWith<Color?>((
                            Set<WidgetState> states,
                          ) {
                            if (states.contains(WidgetState.selected)) {
                              return primaryNormalGreen;
                            }
                            return white;
                          }),
                          onChanged: authController.isLoading.value
                              ? null
                              : (value) {
                                  setState(() {
                                    isChecked = value ?? false;
                                  });
                                },
                        ),
                      ),
                      Expanded(
                        child: Text.rich(
                          TextSpan(
                            style: const TextStyle(
                              color: black,
                              fontSize: 14,
                              fontFamily: "Outfit",
                              fontWeight: FontWeight.w400,
                            ),
                            children: [
                              const TextSpan(
                                text: "By clicking on “sign up”, you are agreeing to the SnapShop’s ",
                              ),
                              TextSpan(
                                text: "Terms of Service",
                                style: const TextStyle(
                                  color: primaryDeepGreen,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const TextSpan(text: " and "),
                              TextSpan(
                                text: "Privacy Policy.",
                                style: const TextStyle(
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
                  const SizedBox(height: 20),
                  Obx(
                    () => authController.isLoading.value
                        ? SizedBox(
                            width: 200,
                            height: 55,
                            child: Center(
                              child: CircularProgressIndicator(
                                color: primaryDeepGreen,
                              ),
                            ),
                          )
                        : PrimaryButton(
                            onPressed: isChecked ? signUp : null,
                            btnName: "Sign Up",
                            width: 200,
                            height: 55,
                          ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
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
                        const Text(
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
                                Get.back();
                              },
                        color: white,
                        child: const Text(
                          "Sign In",
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
    );
  }
}
