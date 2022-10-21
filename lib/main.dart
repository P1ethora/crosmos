import 'package:crosmos/api/api_service.dart';
import 'package:crosmos/page/cart_page/cart_page.dart';
import 'package:crosmos/page/login/login_page.dart';
import 'package:crosmos/page/menu/menu_page.dart';
import 'package:crosmos/page/point_trade/point_page.dart';
import 'package:crosmos/page/registration_page/registration_page.dart';
import 'package:crosmos/shared/user.dart';
import 'package:flutter/material.dart';
import 'page/home/home_page.dart';

void main() {
  loadUser();
  runApp(const MyApp());



}

// void checkToken() async {
//   String token = await APIService.getToken();
//   if (token != '') {
//     User.token = token;
//   }
// }

void loadUser() async {
  if (!(await APIService.loadUserData())) {
    print('BAD LOAD USER DATA');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    loadUser();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routes: {
        //стартовая страница должна запускаться в зависимости от наличия авторизации(токен есть -> /home)
        '/': (context) => APIService.getToken() != '' ? HomePage() : LoginPage(),
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/menu': (context) => MenuPage(),
        '/cart': (context) => CartPage(),
        '/point-trade': (context) => PointTradePage(),
        '/registration': (context) => RegistrationPage()
      }
    );
  }
}
