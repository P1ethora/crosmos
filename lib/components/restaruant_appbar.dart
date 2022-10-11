import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RestaruantAppBar extends StatelessWidget{
  const RestaruantAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      leading: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: Image.network(
            "assets/icons/back.svg",
            color: Colors.black,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Image.network(
              "assets/icons/shopBox.svg",
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }

  void backButton() {
    // Navigator.pushNamedAndRemoveUntil(
    //     context, '/menu', (route) => false);
    // Navigator.push(MaterialPageRoute(builder: (BuildContext context) => /));
  }

}

