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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 220,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/purple234.png')
                    )
                ),
              ),
              const SizedBox(height: 40),
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
                              color: Color.fromRGBO(111,42,131, 1)),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: 'Email',
                      hintStyle: GoogleFonts.abel(
                          color: Colors.white),
                      fillColor: Color.fromRGBO(67,80,159, 0.2),
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
                              color: Color.fromRGBO(111,42,131, 1)),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: 'Password',
                      hintStyle: GoogleFonts.abel(
                          color: Colors.white),
                      fillColor: Color.fromRGBO(67,80,159, 0.2),
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
                              gradient: LinearGradient( colors: [Color.fromRGBO(111,42,131, 1), Color.fromRGBO(67,80,159, 1) ]),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Center(
                              child: Text('Sing In',
                                  style: TextStyle(
                                    color: Colors.white,
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
                          color: Color.fromRGBO(67,80,120, 1))),
                  SizedBox(width: 5),
                  Text('Register now',
                      style: TextStyle(
                          color: Color.fromRGBO(67,80,250, 1),
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
