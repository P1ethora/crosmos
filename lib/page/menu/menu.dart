import 'package:crosmos/page/menu/restaurant_page.dart';
import 'package:flutter/material.dart';



class MenuPage extends StatefulWidget {
  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  String? scanResult;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Flutter Way',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: const RestaurantPage(),
    );
  }
}
