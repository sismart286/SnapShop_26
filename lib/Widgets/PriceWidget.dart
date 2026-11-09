import 'package:flutter/material.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';

Widget PriceWidget({
  String price = "1,34,000",
  double size = 16,
  FontWeight fontweight = FontWeight.w800,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(AssetsImage.rupee, width: 16),
      Text(
        price,

        maxLines: 2,
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: black, fontSize: size, fontWeight: fontweight),
      ),
    ],
  );
}
