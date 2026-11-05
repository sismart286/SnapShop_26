import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Widgets/HomeSearchBar.dart';
import 'package:snapshop/Widgets/MyBottomNavigationBar.dart';

class WishListPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryGreen,
      appBar: AppBar(
        backgroundColor: primaryGreen,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Image.asset(AssetsImage.backIcon, width: 23, color: white),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(AssetsImage.wishlistIcon, color: white, width: 23),
            SizedBox(width: 10),
            Text(
              "Your Wishlist",
              style: TextStyle(
                color: white,
                fontFamily: "Outfit",
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
          color: bgGrey,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 10),
            Text(
              "Search new products.",
              style: TextStyle(
                color: primaryDeepGreen,
                fontFamily: "Outfit",
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 8),
            HomeSearchBar(),
            SizedBox(height: 120),
            Image.asset(AssetsImage.emptyWishlistIcon, width: 130),
            SizedBox(height: 10),
            Text(
              "Your wishlist is empty.",
              style: TextStyle(
                color: black,
                fontFamily: "Outfit",
                fontSize: 15,
              ),
            ),

            // CustomButton(
            //   width: 150,
            //   btnName: "Explore",
            //   btnTextWeight: FontWeight.w500,
            //   onTap: () {
            //     Get.to(() => CategoryPage());
            //   },
            // ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: MyBottomNavigationBar(currentIndex: 1),
    );
  }
}
