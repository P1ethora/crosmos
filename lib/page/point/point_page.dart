import 'package:crosmos/page/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
// import 'package:flutter_nfc_reader/flutter_nfc_reader.dart';

class PointPage extends StatefulWidget {
  @override
  State<PointPage> createState() => _PointPageState();
}

class _PointPageState extends State<PointPage> {
  String? scanResult;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(189, 218, 87, 1),
        title: Text("Main"),
        actions: [
          InkWell(
              child: SizedBox(
                width: 50.0,
                child: Icon(Icons.map),
              )),
          InkWell(
              child: SizedBox(
                width: 50.0,
                child: Icon(Icons.search),
              ))
        ],
      ),
      body: Center(),
    );
  }

}