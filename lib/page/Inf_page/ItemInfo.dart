import 'package:crosmos/api/api_service.dart';
import 'package:flutter/material.dart';

class ItemInfoPage extends StatelessWidget {
  const ItemInfoPage({
    Key? key,
    required this.imageName,
    required this.title,
    required this.price,
  }) : super(key: key);

  final String imageName, title;
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
              child: Image.network("${APIService.HOST}/image/$imageName", fit: BoxFit.fill,),
            ),
            SizedBox(height: 20),
            Text("\$ $price",
                style: TextStyle(fontSize: 18)),
            OutlinedButton(
              onPressed: () => {
                // textHolder[0] = 'dsfdgssad',
              },
              style: OutlinedButton.styleFrom(
                fixedSize: const Size(120, 50),
                side: const BorderSide(color: Color(0xFF22A45D)),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
              child: Text(
                'Take away'.toUpperCase(),
                style: const TextStyle(fontSize: 14),
              ),
            )
          ],
        )
      ),
    );
  }
}
