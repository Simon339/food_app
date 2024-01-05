import 'package:flutter/material.dart';
import 'package:food_app/screens/intro.dart';
import 'package:food_app/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Intropage(),
      routes: {
        '/intropage': (context) => const Intropage(),
        '/menupage': (context) => const MenuPage(),
      },
    );
  }
}
