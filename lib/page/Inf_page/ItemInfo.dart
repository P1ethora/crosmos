import 'package:flutter/material.dart';

class ItemInfoPage extends StatelessWidget {
  const ItemInfoPage({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
  }) : super(key: key);

  final String image, title;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(67, 80, 159, 1),
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
          // SizedBox(height: 20),
            Container(
              height: 400,
              child: Image.network(image, fit: BoxFit.fill,),
            ),
            SizedBox(height: 20),
            Text("\$ $price",
                style: TextStyle(fontSize: 18))
          ],
        )
      ),
    );
  }
}
