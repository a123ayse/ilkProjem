import 'package:drawer1/screens/customer_screen.dart';
import 'package:drawer1/screens/product_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Page",
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: const Center(
        child: Text(
          "Home Page",
          style: TextStyle(fontSize: 25),
        ),
      ),
      drawer: buildDrawer(context),
    );
  }

  Drawer buildDrawer(BuildContext context) {
    return Drawer(
      child: createMenuItems(context),
    );
  }

  ListView createMenuItems(BuildContext context) {
    ListTile createNavigationItem(var icon, String page, routename) {
      return ListTile(
        leading: Icon(icon),
        title: Text(page),
        onTap: () {
          setState(() {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed(routename);
          });
        },
      );
    }

    var navigationList = [
      createNavigationItem(
          Icons.account_box, "Customer", CustomerScreens.routename),
      createNavigationItem(Icons.shop, "Product", ProductScreens.routename),
      createNavigationItem(Icons.home, "Home", "/"),
    ];

    return ListView(children: navigationList);
  }
}
