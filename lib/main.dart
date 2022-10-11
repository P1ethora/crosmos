import 'package:crosmos/page/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:crosmos/page/menu/menu.dart';
import 'page/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/menu' : (context) => MenuPage(),
      },

    );
  }
}