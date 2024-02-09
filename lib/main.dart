import 'package:drawer1/screens/customer_screen.dart';
import 'package:drawer1/screens/home.dart';
import 'package:drawer1/screens/product_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Drawer",
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
        home: const Home(),
        routes: <String, WidgetBuilder>{
          CustomerScreens.routename: (context) => const CustomerScreens(),
          ProductScreens.routename: (context) => const ProductScreens()
        });
  }
}
