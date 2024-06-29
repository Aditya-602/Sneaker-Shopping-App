import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyNavbar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyNavbar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
          color: Color.fromARGB(255, 84, 83, 83),
          activeColor: Colors.white,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBorderRadius: 30,
          gap: 8,
          mainAxisAlignment: MainAxisAlignment.center,
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: 'cart',
            )
          ]),
    );
  }
}
