import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import '../../model/point/story_data.dart';


// class CartPage extends StatefulWidget {
//   @override
//   State<CartPage> createState() => _CartPageState();
// }
//
// class _CartPageState extends State<CartPage> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Color.fromRGBO(67, 80, 159, 1),
//         title: Text("Shopping cart"),
//       ),
//     );
//   }
// }

class CartPage extends StatefulWidget {
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  late List<String> items;

  @override
  void initState() {
    super.initState();
    items = [];
    addItems();
  }

  addItems() {
    items.add("Greek salad");
    items.add("Borsch soup");
    items.add("Crackers");
    items.add("Ballantine's whiskey");
  }

  Widget showList() {
    return Expanded(
        child: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return rowItem(context, index);
          },
        ));
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
          onPressed: () {},
          //ПЕРЕХОД В МЕНЮ
          child: Icon(Icons.check, color: Colors.white),
        ),
        appBar: AppBar(
            backgroundColor: Color.fromRGBO(67, 80, 159, 1),
            title: Row(
              children: [
                Text('Shopping basket')
              ],
            ),
        actions: [
          InkWell(
              child: Container(
                child: Container(
                  alignment: Alignment.center,
                  width: 120.0,
                  child: Text("sum: \$20"),
                ),
              )),
        ],
        ),
        body: Column(children: [
          showList(),
        ]));
  }
}
