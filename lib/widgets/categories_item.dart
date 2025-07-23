import 'package:flutter/material.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.amber
      ),

      child:Container(
            height: 100,
            // color: Colors.black54,
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black12,
         ),
              height: 20,
              width: double.infinity,
              
              child: Text(
                textAlign: TextAlign.start,
                "Category Name",
                style: const TextStyle(
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