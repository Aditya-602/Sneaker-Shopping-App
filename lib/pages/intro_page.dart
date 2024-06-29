import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set transparent background for the Scaffold
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          // Logo
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Center(
              child: Image.asset(
                'lib/imagefiles/logo.png',
                height: 300,
              ),
            ),
          ),

          // const Text(
          //   'Welcome!',
          //   style: TextStyle(
          //       color: Colors.white,
          //       fontFamily: 'arial',
          //       fontSize: 30,
          //       fontWeight: FontWeight.bold),
          // ),
          const SizedBox(
            height: 200,
          ),

          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.white)),
              child: const Icon(
                Icons.arrow_circle_right,
                color: Colors.white,
                size: 100,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
