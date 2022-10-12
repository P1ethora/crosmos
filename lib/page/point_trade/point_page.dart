import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class PointTradePage extends StatefulWidget {
  @override
  State<PointTradePage> createState() => _PointTradePageState();
}

class _PointTradePageState extends State<PointTradePage> {
  late List<String> items;

  @override
  void initState() {
    super.initState();
    items = [];
    addItems();
  }

  addItems() {
    items.add("One");
    items.add("Two");
    items.add("Three");
    items.add("Four");
  }

  Widget showList() {
    return ListView.builder(
      padding: EdgeInsets.all(10),
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return rowItem(context, index);
      },
    );
  }

  rowItem(context, index) {
    return Dismissible(
        key: Key(items[index]),
        onDismissed: (direction) {
          var item = items[index];
          showSnackBar(context, item, index);
          removeItem(index);
        },
        background: deleteBgItem(),
        child: Card(
          child: ListTile(
            title: Text(items[index]),
          ),
        ));
  }

  removeItem(index) {
    setState(() {
      items.removeAt(index);
    });
  }

  undoItem(index, item) {
    setState(() {
      items.insert(index, item);
    });
  }

  Widget deleteBgItem() {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.only(right: 20),
      color: Colors.red,
      child: Icon(Icons.delete, color: Colors.white),
    );
  }

  showSnackBar(context, item, index) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('$item delete'),
      action: SnackBarAction(
        label: "UNDO ITEM",
        onPressed: () {
          undoItem(index, item);
        },
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pushNamed('/menu'), //ПЕРЕХОД В МЕНЮ
        child: Text("Меню"),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(67, 80, 159, 1),
        title: Text("Goracio: 4"),
        actions: [
          InkWell(
              child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                alignment: Alignment.center,
                width: 120.0,
                child: Text("сумма: \$100"),
              ),
              SizedBox(height: 5),
              Container(
                alignment: Alignment.center,
                width: 120.0,
                child: Text("твоя: \$60"),
              ),
            ],
          )),
          InkWell(
              child: Container(
            alignment: Alignment.center,
            width: 90.0,
            child: Text("оплатить"),
          )),
          InkWell(
              child: Container(
            alignment: Alignment.center,
            width: 90.0,
            child: Text(
              "оплатить и выйти",
              textAlign: TextAlign.center,
            ),
          ))
        ],
      ),
      body: Container(
        child: showList(),
      ),
    );
  }
}
