import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Pages/SearchResultsPage/SearchResultsPage.dart';

class HomeSearchBar extends StatelessWidget {
  final Color? barColor;
  const HomeSearchBar({super.key, this.barColor = lightGrey});

  static const List<String> _products = [
    "tshirts for men",
    "tshirts for women",
    "laptops",
    "glowing skin serum",
    "headphones",
    "smart watches",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SearchAnchor(
        viewHintText: "Search products",
        viewBackgroundColor: white,
        builder: (BuildContext context, SearchController controller) {
          return Container(
            height: 45,
            width: 335,
            decoration: BoxDecoration(
              color: barColor,
              borderRadius: BorderRadius.circular(17),
            ),
            child: TextField(
              controller: controller,
              readOnly: true,
              onTap: controller.openView,
              decoration: InputDecoration(
                hintText: "Search products",
                hintStyle: const TextStyle(fontFamily: "Outfit"),
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8.0,
                ),
                suffixIcon: IconButton(
                  onPressed: controller.openView,
                  icon: const Icon(Icons.search_sharp),
                ),
              ),
            ),
          );
        },
        suggestionsBuilder:
            (BuildContext context, SearchController controller) {
              final query = controller.text.toLowerCase();
              final matches = _products
                  .where((item) => item.toLowerCase().contains(query))
                  .toList();

              if (matches.isEmpty) {
                return [
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "No products found",
                      style: TextStyle(fontFamily: "Outfit", fontSize: 16),
                    ),
                  ),
                ];
              }

              return matches.map(
                (item) => ListTile(
                  leading: const Icon(Icons.search_sharp),
                  title: Text(
                    item,
                    style: TextStyle(
                      fontFamily: "Outfit",
                      fontSize: 18,
                      color: black,
                    ),
                  ),
                  onTap: () => Get.to(() => SearchResultsPage(query: query)),
                ),
              );
            },
      ),
    );
  }
}
