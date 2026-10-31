import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Pages/ProductPage/ProductPage.dart';
import 'package:snapshop/Pages/SearchResultsPage/Widgets/ProductBox.dart';
import 'package:snapshop/Widgets/HomeSearchBar.dart';
import 'package:snapshop/Pages/SearchResultsPage/Widgets/FilterBar.dart';
import 'package:snapshop/Pages/SearchResultsPage/Widgets/SponsoredAdWidget.dart';
import 'package:snapshop/Widgets/PriceWidget.dart';
import 'package:snapshop/Widgets/PrimaryButton.dart';

class SearchResultsPage extends StatelessWidget {
  final String query;
  const SearchResultsPage({super.key, required this.query});

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
        title: HomeSearchBar(),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: bgGrey,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Stack(
          children: [
            FilterBar(),
            Padding(
              padding: const EdgeInsets.only(top: 53),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    SponsoredAdWidget(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Tshirts for men",
                                style: TextStyle(
                                  color: black,
                                  fontFamily: "Outfit",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                  color: midBlack,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "Under",
                                      style: TextStyle(
                                        color: white,
                                        fontFamily: "Outfit",
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "599",
                                      style: TextStyle(
                                        color: white,
                                        fontFamily: "Outfit",
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Image.asset(
                                      AssetsImage.dorpDownIcon,
                                      width: 12,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          //Search Results
                          GridView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 1,
                                  mainAxisExtent: 250,
                                ),
                            itemCount: 12,
                            itemBuilder: (context, index) {
                              return ProductBox();
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
