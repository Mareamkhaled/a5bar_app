import 'screens/category_screen.dart';
import 'screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/category': (context) =>const CategoryScreen(),
      },
         debugShowCheckedModeBanner: false,
         home:const HomeScreen(),
    );
  }
}

