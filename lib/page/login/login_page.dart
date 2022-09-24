import 'package:crosmos/api/api_service.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/model/login_model.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    APIService api = APIService();
    api
        .login(LoginRequestModel(
            email: _emailController.text.trim(),
            password: _passwordController.text.trim()))
        .then((response) => {
              // if (response == true)
              //   {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/home', (route) => false)
                // }
              // else
              //   {
              //     //wtf
              //   }
            });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.android,
                  size: 100, color: Color.fromRGBO(65, 75, 25, 1)),
              const SizedBox(height: 50),
              Padding(
                padding:  const EdgeInsets.symmetric(horizontal: 25.0),
              child:
              Text('Crosmos welcomes',
                  style: GoogleFonts.bebasNeue(
                      fontSize: 45, color: Color.fromRGBO(65, 75, 25, 1)))
              ),
              const SizedBox(height: 10),
              const Text(
                'You\'ve been missed!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromRGBO(78, 89, 36, 1)),
              ),
              const SizedBox(height: 60),
              //EMAIL
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white),
                          borderRadius: BorderRadius.circular(12)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(189, 218, 87, 1)),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: 'Email',
                      hintStyle: GoogleFonts.abel(
                          color: Color.fromRGBO(245, 245, 245, 1)),
                      fillColor: Color.fromRGBO(78, 89, 36, 0.2),
                      filled: true),
                ),
              ),
              const SizedBox(height: 10),
              //PASSWORD
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white),
                          borderRadius: BorderRadius.circular(12)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(189, 218, 87, 1)),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: 'Password',
                      hintStyle: GoogleFonts.abel(
                          color: Color.fromRGBO(245, 245, 245, 1)),
                      fillColor: Color.fromRGBO(78, 89, 36, 0.2),
                      filled: true),
                ),
              ),
              const SizedBox(height: 10),
              //SIGN_IN BUTTON
              Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25.0, vertical: 25),
                  child: GestureDetector(
                      onTap: signIn,
                      child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(189, 218, 87, 1),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Center(
                              child: Text('Sing In',
                                  style: TextStyle(
                                    color: Color.fromRGBO(245, 245, 245, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  )))))),

              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Not a member?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(70, 80, 30, 1))),
                  SizedBox(width: 5),
                  Text('Register now',
                      style: TextStyle(
                          color: Colors.cyan,
                          fontWeight: FontWeight.bold)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
