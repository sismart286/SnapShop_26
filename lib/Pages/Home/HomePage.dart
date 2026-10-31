import 'package:flutter/material.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Pages/Home/widgets/CategoryBar.dart';
import 'package:snapshop/Pages/Home/widgets/Header.dart';
import 'package:snapshop/Pages/Home/widgets/OfferBanner.dart';
import 'package:snapshop/Pages/Home/widgets/ProductOffersTime.dart';
import 'package:snapshop/Widgets/HomeSearchBar.dart';
import 'package:snapshop/Pages/Home/widgets/YouLikedAndSpacialOffer.dart';
import 'package:snapshop/Widgets/MyBottomNavigationBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> bannerImages = [
      AssetsImage.glowingskin,
      AssetsImage.electroicsOffers,
      AssetsImage.laptopOffer,
    ];

    return Scaffold(
      backgroundColor: bgGrey,
      body: SafeArea(
        child: SingleChildScrollView(
          // padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            children: [
              homeHeader(context),
              SizedBox(height: 5),
              HomeSearchBar(),
              SizedBox(height: 13),
              categoryBar(),
              SizedBox(height: 15),
              offerBanner(context, bannerImages),
              SizedBox(height: 15),
              youLikedAndSpacialOffer(),
              SizedBox(height: 5),
              ProductOffersTime(),
              SizedBox(height: 80),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: MyBottomNavigationBar(),
    );
  }
}
