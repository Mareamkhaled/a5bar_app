import 'package:flutter/material.dart';

class CategoriesYouLike extends StatelessWidget {
  const CategoriesYouLike({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories you like",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Icon(Icons.arrow_forward_ios, color: Colors.white),
              ],
            );
  }
}