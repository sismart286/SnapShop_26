import 'package:flutter/material.dart';
import 'package:snapshop/Config/Colors.dart';

Widget searchBar() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Container(
      height: 45,
      width: 335,
      decoration: BoxDecoration(
        color: lightGrey,
        borderRadius: BorderRadius.circular(17),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search products",
          hintStyle: TextStyle(fontFamily: "Outfit"),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 8.0,
          ),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_sharp),
          ),
        ),
      ),
    ),
  );
}
