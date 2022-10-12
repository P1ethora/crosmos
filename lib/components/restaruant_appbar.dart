import 'dart:typed_data';

import 'package:crosmos/page/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:crosmos/main.dart';

class RestaruantAppBar extends StatefulWidget {
  @override
  State<RestaruantAppBar> createState() => _RestaruantAppBarState();
}

class _RestaruantAppBarState extends State<RestaruantAppBar> {
  String? scanResult;
  int currentIndex = 0;

// }
// class RestaruantAppBar extends StatelessWidget{
//   const RestaruantAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // return Scaffold(
    //   resizeToAvoidBottomInset: false,
    //   appBar: AppBar(
    //     backgroundColor: Color.fromRGBO(67,80,159, 1),
    //     title: Text("Main"),
    //     actions: [
    //       InkWell(
    //           child: SizedBox(
    //             width: 50.0,
    //             child: Icon(Icons.map),
    //           )),
    //       InkWell(
    //           child: SizedBox(
    //             width: 50.0,
    //             child: Icon(Icons.search),
    //           ))
    //     ],
    //   ),
    // );

    return SliverAppBar(
      expandedHeight: 200,
      backgroundColor: Colors.white,
      elevation: 0,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network(
          "assets/images/Header-image.png",
          fit: BoxFit.cover,
        ),
      ),
      actions: [
        Container(
          width: 55,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            icon: Icon(Icons.arrow_back_rounded),
            onPressed: backButton,
            color: Colors.black,
          ),
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: backButton,
          color: Colors.black,
        ),

      ],



      // leading: Padding(
      //   padding: const EdgeInsets.only(left: 16),
      //   child: CircleAvatar(
      //     backgroundColor: Colors.white,
      //     child: Image.network(
      //       "assets/icons/back.svg",
      //       color: Colors.black,
      //     ),
      //   ),
      // ),
      // actions: [
      //   Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 16),
      //     child: CircleAvatar(
      //       backgroundColor: Colors.white,
      //       child: Image.network(
      //         "assets/icons/shopBox.svg",
      //         color: Colors.black,
      //       ),
      //     ),
      //   )
      // ],
    );
  }

  Future backButton() async {

    Navigator.push(
      context,
      new MaterialPageRoute(
        builder: (context) => new HomePage(),
      ),
    );

  //   Navigator.pushNamed(context, "/login");

  //   Navigator.pushNamedAndRemoveUntil(
  //       context, '/home', (route) => false);
  }

}

