import 'package:flutter/material.dart';
import 'package:snapshop/Config/Colors.dart';

var lightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent,
    titleTextStyle: TextStyle(color: white),
    actionsIconTheme: IconThemeData(color: white),
  ),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: lightGrey,
    filled: true,
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(15),
    ),
  ),
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: primaryGreen,
    onPrimary: white,
    secondary: extraLightGrey,
    onSecondary: primaryGreen,
    error: Colors.red,
    onError: black,
    surface: bgGrey,
    onSurface: midBlack,
  ),

  // textTheme: TextTheme(
  //   headlineLarge: TextStyle(
  //     fontSize: 32,
  //     color: primaryGreen,
  //     fontFamily: "Outfit",
  //     fontWeight: FontWeight.w700,
  //   ),
  //   headlineMedium: TextStyle(
  //     fontSize: 24,
  //     color: white,
  //     fontFamily: "Poppins",
  //     fontWeight: FontWeight.w400,
  //   ),

  //   headlineSmall: TextStyle(
  //     fontSize: 16,
  //     color: white,
  //     fontFamily: "Poppins",
  //     fontWeight: FontWeight.w400,
  //   ),
  //   bodyLarge: TextStyle(
  //     fontSize: 24,
  //     color: black,
  //     fontFamily: "Poppins",
  //     fontWeight: FontWeight.w500,
  //   ),
  //   bodyMedium: TextStyle(
  //     fontSize: 20,
  //     color: white,
  //     fontFamily: "Poppins",
  //     fontWeight: FontWeight.w600,
  //   ),
  //   bodySmall: TextStyle(
  //     fontSize: 15,
  //     color: black,
  //     fontFamily: "Poppins",
  //     fontWeight: FontWeight.w500,
  //   ),
  //   titleLarge: TextStyle(
  //     fontSize: 20,
  //     color: black,
  //     fontFamily: "Poppins",
  //     fontWeight: FontWeight.w300,
  //   ),
  //   titleMedium: TextStyle(
  //     fontSize: 16,
  //     color: black,
  //     fontFamily: "Poppins",
  //     fontWeight: FontWeight.w400,
  //   ),
  //   titleSmall: TextStyle(
  //     fontSize: 12,
  //     color: black,
  //     fontFamily: "Poppins",
  //     fontWeight: FontWeight.w400,
  //   ),

  //   labelLarge: TextStyle(
  //     fontSize: 20,
  //     color: black,
  //     fontFamily: "Poppins",
  //     fontWeight: FontWeight.w300,
  //   ),
  //   labelMedium: TextStyle(
  //     fontSize: 16,
  //     color: white,
  //     fontFamily: "Poppins",
  //     fontWeight: FontWeight.w600,
  //   ),
  //   labelSmall: TextStyle(
  //     fontSize: 15,
  //     color: white,
  //     fontFamily: "Poppins",
  //     fontWeight: FontWeight.w400,
  //   ),
  // ),
);
