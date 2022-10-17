import 'package:crosmos/page/cart_page/cart_page.dart';
import 'package:crosmos/page/login/login_page.dart';
import 'package:crosmos/page/menu/menu_page.dart';
import 'package:crosmos/page/point_trade/point_page.dart';
import 'package:flutter/material.dart';
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
        //стартовая страница должна запускаться в зависимости от наличия авторизации(токен есть -> /home)
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/menu' : (context) => MenuPage(),
        '/cart' : (context) => CartPage(),
        '/point-trade':(context) => PointTradePage(),
      },

    );
  }
}