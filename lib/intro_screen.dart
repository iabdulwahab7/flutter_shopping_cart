import 'package:flutter/material.dart';
import 'package:shooping_cart/screens/product_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  // initSetState() {
  //   Timer(const Duration(seconds: 5), () {});
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100),
              child: Image(
                image: AssetImage('assets/splash.png'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(25),
              child: Text(
                "We deliver groceries at your doorstep!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40),
              ),
            ),
            const Text(
              'Fresh items everyday',
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ProductScreen()));
              },
              child: Container(
                width: 130,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green.shade400,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                    child: Text(
                  'Get Started',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
