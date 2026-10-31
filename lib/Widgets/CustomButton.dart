import 'package:flutter/material.dart';

Widget CustomButton({
  double? height = 50,
  double? width = 250,
  double? radius = 10,
  Color? btnTextColor = Colors.white,
  FontWeight? btnTextWeight = FontWeight.w400,
  double? btnTextSize = 15,
  Color? btnColor = Colors.black,
  String? btnName = "Custom Button",
  VoidCallback? onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: btnColor,
        borderRadius: BorderRadius.circular(radius!),
      ),
      child: Center(
        child: Text(
          btnName!,
          style: TextStyle(
            color: btnTextColor!,
            fontSize: btnTextSize,
            fontFamily: "Outfit",
            fontWeight: btnTextWeight,
          ),
        ),
      ),
    ),
  );
}
