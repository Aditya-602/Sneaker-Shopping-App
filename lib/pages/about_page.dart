import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100),
              child: Center(
                child: Text(
                  'About',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(233, 46, 46, 46),
                  borderRadius: BorderRadius.circular(20)),
              height: 250,
              width: 230,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'lib/imagefiles/About.jpg',
                  height: 100,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 250,
              width: 300,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(233, 46, 46, 46),
                  borderRadius: BorderRadius.circular(20)),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Hi This is Aditya Srivastava, currently a Btech CSE Student. And this is my first Flutter Project that i've made. This is a demo Shoe Shopping app with all the basic functionalities such as adding products to cart, removing products from the cart, toggling between pages etc.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/homepage');
              },
              icon: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                        color: const Color.fromARGB(255, 255, 255, 255))),
                child: const Icon(
                  Icons.arrow_back_rounded,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: const Text(
                'Go Back',
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            )
          ],
        ),
      ),
    );
  }
}
