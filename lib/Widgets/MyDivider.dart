import 'package:flutter/material.dart';
import 'package:snapshop/Config/Colors.dart' show primaryNormalGreen;

Widget MyDivider({double length = 40}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: length),
    child: Divider(color: primaryNormalGreen),
  );
}
