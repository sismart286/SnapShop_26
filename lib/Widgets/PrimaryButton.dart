import 'package:flutter/material.dart';
import 'package:snapshop/Config/Colors.dart';

Widget PrimaryButton({
  VoidCallback? onPressed,
  String? btnName,
  double? width,
  double? height,
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
