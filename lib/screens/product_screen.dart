import 'package:flutter/material.dart';

class ProductScreens extends StatelessWidget {
  const ProductScreens({super.key});

  static const routename = "/Product";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Products",
        ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Products",
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Product Add",
                  style: TextStyle(fontSize: 20, color: Colors.amber),
                ))
          ],
        ),
      ),
    );
  }
}
