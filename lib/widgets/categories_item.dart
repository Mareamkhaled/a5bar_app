import 'package:flutter/material.dart';

import '../models/categories_model.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key, required this.categoriesModel});
  final CategoriesModel categoriesModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 150,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(categoriesModel.image))
      ),

      child:Container(
            height: 100,
            // color: Colors.black54,
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.black12,
         ),
              height: 20,
              width: double.infinity,
              
              child: Text(
                textAlign: TextAlign.start,
                categoriesModel.title,
                style:const TextStyle(
                  color: Colors.white,
                  // fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
    );
  }
}