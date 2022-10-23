import 'package:crosmos/api/api_service.dart';
import 'package:flutter/material.dart';

class ItemInfoPage extends StatelessWidget {
  const ItemInfoPage({
    Key? key,
    required this.imageName,
    required this.title,
    required this.price,
    required this.id,
    required this.weight,
    required this.typeWeight,
    required this.currency,
    required this.infoProduct,
  }) : super(key: key);

  final String title, imageName, typeWeight, currency, infoProduct;
  final double price, weight, id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(67, 80, 159, 1),
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
            Text("$title",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
            SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:Text("$infoProduct",
              style: TextStyle(fontSize: 20)),
          ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children:[
                  Text("\$ $price",
                      style: TextStyle(fontSize: 20)),
                  const Spacer(),
                  Text("$weight",
                      style: TextStyle(fontSize: 20)),
                  Text("$typeWeight",
                      style: TextStyle(fontSize: 20)),
                ]
              ),
            ),
            // ButtonWidgetInfo(),
          ],
        )
      ),
        floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: ButtonWidgetInfo(),
      )
    );
  }
}


class ButtonWidgetInfo extends StatefulWidget {
  const ButtonWidgetInfo({Key? key}) : super(key: key);

  @override
  _ButtonWidgetInfoState createState() => _ButtonWidgetInfoState();
}

class _ButtonWidgetInfoState extends State<ButtonWidgetInfo> {
  late Color _buttonColor;
  var textColor;
  var btnText;

  @override
  void initState() {
    //Начальное значение цвета кнопки
    _buttonColor = Colors.white;
    textColor = 0xffffffff;
    btnText = 'Take';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        //Здесь меняем переменную цвета кнопки внутри state
        setState(() {
          if (_buttonColor == Colors.white) {
            _buttonColor = Colors.green;
            btnText = 'Taken';
            textColor = 0xffffffff;
          } else {
            _buttonColor = Colors.white;
            btnText = 'Take';
            textColor = 0xFF000000;
          }
        });
      },
      style: ElevatedButton.styleFrom(
        //Здесь указывается, что для цвета нужно взять переменную
          primary: _buttonColor,
          fixedSize: const Size(150, 60),
          side: const BorderSide(color: Color(0xFF22A45D)),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))
          )
      ),
      child: Text(
        btnText,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      ),
    );
  }
}
