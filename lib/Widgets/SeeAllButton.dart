import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snapshop/Config/Colors.dart';

Widget SeeAllButton({VoidCallback? onTap}) {
  return InkWell(
    onTap: onTap,
    child: Text(
      "See All",
      style: TextStyle(
        color: primaryGreen,
        fontFamily: "Outfit",
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
