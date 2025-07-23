import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../lists/categories_list.dart';
import 'categories_item.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
  items: categoriresList.map((category) {
    return CategoriesItem(categoriesModel: category);
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