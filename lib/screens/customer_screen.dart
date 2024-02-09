import 'package:flutter/material.dart';

class CustomerScreens extends StatelessWidget {
  const CustomerScreens({super.key});

  static const routename = "/Customer";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Customers",
        ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Customers",
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Customer Add",
                  style: TextStyle(fontSize: 20, color: Colors.amber),
                ))
          ],
        ),
      ),
    );
  }
}
