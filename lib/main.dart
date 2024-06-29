import 'package:app1/models/cart.dart';
import 'package:app1/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/about_page.dart';
import 'pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
        routes: {
          '/intropage': (context) => const IntroPage(),
          '/aboutpage': (context) => const AboutPage(),
          '/homepage': (context) => const HomePage(),
        },
      ),
    );
  }
}
