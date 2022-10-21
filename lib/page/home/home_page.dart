import 'package:crosmos/api/api_service.dart';
import 'package:crosmos/page/login/login_page.dart';
import 'package:crosmos/page/point_trade/point_page.dart';
import 'package:crosmos/shared/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_nfc_reader/flutter_nfc_reader.dart';

import 'my_drawer_header.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? scanResult;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    loadUser();
    WidgetsBinding.instance.addPostFrameCallback((_) => nfc(currentIndex));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(67,80,159, 1),
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
      body: Center(
        child: currentIndex == 0
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Container(
                    height: 44.0,
                    decoration: BoxDecoration(gradient: LinearGradient( colors: [Color.fromRGBO(111,42,131, 1), Color.fromRGBO(67,80,159, 1) ])),
                    child: ElevatedButton.icon(
                        onPressed: scanQR,
                        style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                        icon: Icon(Icons.camera_alt_outlined),
                        label: Text('Start Scan')
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                      scanResult == null
                          ? 'Scan a code!'
                          : 'Scan result : $scanResult',
                      style: TextStyle(fontSize: 18))
                ],
              )
            : Center(
                child: Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/gif/nfc_next.gif'))),
              )),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [MyHeaderDrawer(), MyDrawerList()],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        unselectedItemColor: Color.fromRGBO(67,80,159, 1),
        selectedItemColor: Color.fromRGBO(67,80,250, 1),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_2_outlined), label: 'QR'),
          BottomNavigationBarItem(icon: Icon(Icons.nfc_outlined), label: 'NFC')
        ],
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          menuItem(1, "Карты", Icons.credit_card, "/home"),
          menuItem(2, "Подписки", Icons.donut_large, "/home"),
          menuItem(3, "История", Icons.history, "/home"),
          Divider(),
          menuItem(4, "Настройки", Icons.settings, "/home"),
          menuItem(5, "Выйти", Icons.logout, "/login")
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, String link) {
    return Material(
      child: InkWell(
        onTap: () =>
            Navigator.pushNamedAndRemoveUntil(context, link, (route) => false),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(child: Icon(icon, size: 20, color: Colors.black)),
              Expanded(
                  flex: 3,
                  child: Text(
                    title,
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  // Future nfc() async {
  //   if(currentIndex == 1) {
  //     FlutterNfcReader.read().then((response) {
  //       setState(() => scanResult = response.content);
  //     });
  //   } else {
  //     FlutterNfcReader.stop();
  //   }
  // }

  void loadUser() async {
    if(!(await APIService.loadUserData())) {
      print('BAD LOAD USER DATA');
        Navigator.pushNamedAndRemoveUntil(
            context, '/login', (route) => false);
    }
  }

  Future scanQR() async {

    // String result;
    // try {
    //   result = await FlutterBarcodeScanner.scanBarcode(
    //       "#000000", "Cancel", true, ScanMode.QR);
    // } on PlatformException {
    //   result = 'Failed to get platform version.';
    // }
    // if (!mounted) return;
    // setState(() => scanResult = result);

    //бэк запрос с result и id пользователя
    //если приходит хороший ответ переводим на страницу точки
    String value = "{\"identifier\": \"1\",\"value\": \"TlXIjsswkrSFVHtC1eBRJg==\"}";

    // APIService.takePlace(value);
    Navigator.of(context).pushNamed('/point-trade');
  }

  //в nfc все тоже самое что и в scanQr, также нужно обрезать ответ nfc, в начало крепяться левый символы
  Future nfc(currentIndex) async {
    // if(currentIndex == 1) {
    //   FlutterNfcReader.read().then((response) {
    //     setState(() => scanResult = response.content);
    //     print(response.content);
    //   });
    // } else {
    //   FlutterNfcReader.stop().then((response) {
    //   });
    // }
  }

}

enum DrawerSections {
  cards,
  contacts,
  events,
  notes,
  settings,
  notifications,
  privacy_policy,
  send_feedback
}
