import 'package:flutter/material.dart';
import 'package:snapshop/Config/Colors.dart';

Widget PrimaryButton({
  VoidCallback? onPressed,
  String? btnName = "Primary Button",
  double? width = 200,
  double? height = 55,
}) {
  return FilledButton(
    onPressed: onPressed,
    style: FilledButton.styleFrom(
      backgroundColor: primaryGreen,
      fixedSize: Size(width!, height!),
    ),
    child: Text(
      btnName!,
      style: TextStyle(
        fontFamily: "Outfut",
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
