import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class RestaruantAppBar extends StatefulWidget {
  @override
  State<RestaruantAppBar> createState() => _RestaruantAppBarState();
}

class _RestaruantAppBarState extends State<RestaruantAppBar> {

  @override
  Widget build(BuildContext context) {

    return SliverAppBar(
      expandedHeight: 55,
      backgroundColor: Color.fromRGBO(67,80,159, 1),
      elevation: 0,
      pinned: true,
      actions: [
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () => Navigator.pushNamed(context, "/cart"),
        ),
      ],
    );
  }
}
