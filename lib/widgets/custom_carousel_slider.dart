import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../lists/categories_list.dart';
import '../screens/category_screen.dart';
import 'categories_item.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items:
          categoriresList.map((category) {
            return GestureDetector(
              onTap: () {
                print("Tapped on category: $category.title");
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder:
                        (_, __, ___) =>
                            CategoryScreen(category: category.title),
                    transitionsBuilder: (_, animation, __, child) {
                      return FadeTransition(opacity: animation, child: child);
                    },
                  ),
                );
              },
              child: CategoriesItem(categoriesModel: category),
            );
          }).toList(),
      options: CarouselOptions(
        height: 180,
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 0.7,
        aspectRatio: 2.0,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
      ),
    );
  }
}
