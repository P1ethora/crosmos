import 'package:crosmos/page/Inf_page/ItemInfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MenuCategoryItem extends StatelessWidget {
  const MenuCategoryItem({
    Key? key,
    required this.title,
    required this.items,
  }) : super(key: key);

  final String title;
  final List items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        ...items,
      ],
    );
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
  }) : super(key: key);

  final String image, title;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ItemInfoPage(
                    title: title,
                    image: image,
                    price: price
                ),
              )
            )
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            fixedSize: const Size(100, 100),
            padding: const EdgeInsets.all(0)
          ),
          child: Image.network(image),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: DefaultTextStyle(
            style: const TextStyle(color: Colors.black54),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "Shortbread, chocolate turtle cookies, and red velvet.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "\$ $price",
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF22A45D),
                      ),
                    ),
                    const Spacer(),
                    ButtonWidget(),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}


class ButtonWidget extends StatefulWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
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
        fixedSize: const Size(100, 40),
        side: const BorderSide(color: Color(0xFF22A45D)),
        shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8))
        )
      ),
      child: Text(
        btnText,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
