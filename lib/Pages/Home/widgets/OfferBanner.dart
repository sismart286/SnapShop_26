import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Controllers/BannerController.dart';

Widget offerBanner(BuildContext context, List<String> bannerImages) {
  BannerController bannerController = Get.put(BannerController());
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(right: 8.0, left: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "#SpecialOfferForYou",
              style: TextStyle(
                fontFamily: "Outfit",
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "See All",
              style: TextStyle(
                color: primaryDeepGreen,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),

      SizedBox(height: 10),

      CarouselSlider(
        options: CarouselOptions(
          height: 190.0,
          autoPlay: true,
          padEnds: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          viewportFraction: 0.9,
          // PAUSE ON TOUCH / HOLD:
          pauseAutoPlayOnTouch: true,
          pauseAutoPlayOnManualNavigate: true,
          pauseAutoPlayInFiniteScroll: false,
          onPageChanged: (index, reason) {
            bannerController.updateIndex(index);
          },
        ),
        items: bannerImages.map((imagePath) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: primaryExtraLightGreen,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(imagePath, fit: BoxFit.contain),
                ),
              );
            },
          );
        }).toList(),
      ),

      const SizedBox(height: 10),

      // Dots Indicator wrapped in Obx for reactive state updates
      Obx(() {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: bannerImages.asMap().entries.map((entry) {
            final isSelected = bannerController.currentIndex.value == entry.key;
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: isSelected ? 18.0 : 8.0,
              height: 8.0,
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: isSelected
                    ? Theme.of(context).primaryColor
                    : Colors.grey.shade400,
              ),
            );
          }).toList(),
        );
      }),
    ],
  );
}
