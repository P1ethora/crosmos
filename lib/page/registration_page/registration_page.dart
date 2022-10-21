import 'package:crosmos/api/api_service.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/model/login_model.dart';

class RegistrationPage extends StatefulWidget {
  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _imageController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future registration() async {
    APIService.registration(_firstNameController.text.trim(), _lastNameController.text.trim(),
        _emailController.text.trim(), _passwordController.text.trim(), _imageController.text.trim())
        .then((response) => {
      if (response == true)
        {
          Navigator.pushNamedAndRemoveUntil(
              context, '/', (route) => false)
        }
      else
        {
          //wtf
        }
    });
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _imageController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    APIService.deleteToken();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(67, 80, 159, 1),
        title: Text(' Registration')
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: _firstNameController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(111, 42, 131, 1)),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: 'First name',
                      hintStyle: GoogleFonts.abel(color: Colors.white),
                      fillColor: Color.fromRGBO(67, 80, 159, 0.2),
                      filled: true),
                ),
              ),
              const SizedBox(height: 20),
              //LAST_NAME
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: _lastNameController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(111, 42, 131, 1)),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: 'Last name',
                      hintStyle: GoogleFonts.abel(color: Colors.white),
                      fillColor: Color.fromRGBO(67, 80, 159, 0.2),
                      filled: true),
                ),
              ),
              const SizedBox(height: 20),
              //IMAGE URL
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: _imageController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(111, 42, 131, 1)),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: 'Image url',
                      hintStyle: GoogleFonts.abel(color: Colors.white),
                      fillColor: Color.fromRGBO(67, 80, 159, 0.2),
                      filled: true),
                ),
              ),
              const SizedBox(height: 20),
              //EMAIL
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(111, 42, 131, 1)),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: 'Email',
                      hintStyle: GoogleFonts.abel(color: Colors.white),
                      fillColor: Color.fromRGBO(67, 80, 159, 0.2),
                      filled: true),
                ),
              ),
              const SizedBox(height: 20),
              //PASSWORD
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(111, 42, 131, 1)),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: 'Password',
                      hintStyle: GoogleFonts.abel(color: Colors.white),
                      fillColor: Color.fromRGBO(67, 80, 159, 0.2),
                      filled: true),
                ),
              ),
              const SizedBox(height: 20),

              //SIGN_IN BUTTON
              Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25.0, vertical: 25),
                  child: GestureDetector(
                      onTap: registration,
                      child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(111, 42, 131, 1),
                                Color.fromRGBO(67, 80, 159, 1)
                              ]),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Center(
                              child: Text('Registration',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  )
                              )
                          )
                      )
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}