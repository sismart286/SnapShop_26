import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';

Widget MyTextField({
  double? size = 10,
  String? labelName = "TextField",
  String? hintText = "Type here",
  bool? hideText = false,
  Color? labelTextColor = black,
}) {
  RxBool isVisible = true.obs;

  return Padding(
    padding: EdgeInsets.symmetric(horizontal: size!),
    child: Column(
      children: [
        Row(
          children: [
            Text(
              labelName!,
              style: TextStyle(
                fontFamily: "Outfit",
                fontSize: 15,
                color: labelTextColor,
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Obx(
          () => TextField(
            obscureText: isVisible.value,

            decoration: InputDecoration(
              filled: true,
              fillColor: white,
              hintText: hintText!,
              hintStyle: TextStyle(
                fontFamily: "Outfit",
                fontWeight: FontWeight.w600,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12),
              ),
              suffixIcon: hideText == true
                  ? IconButton(
                      onPressed: () {
                        isVisible.value = !isVisible.value;
                      },
                      icon: Icon(
                        isVisible.value
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    )
                  : null,
            ),
          ),
        ),
      ],
    ),
  );
}
