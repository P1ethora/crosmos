import 'package:crosmos/api/api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import '../../model/point/story_data.dart';
import '../../shared/user.dart';

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
    items.add("Order one");
    items.add("Order two");
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
          onPressed: () => Navigator.of(context).pushNamed('/menu'),
          //ПЕРЕХОД В МЕНЮ
          child: Text("Menu"),
        ),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(67, 80, 159, 1),
          title: Row(
            children: [
              Icon(
                Icons.balance_rounded,
                size: 15,
              ),
              Text(' Omlet-H:1')
            ],
          ),
          automaticallyImplyLeading: false,
          leading: IconButton(
            //К СТРЕЛКЕ В СЛУЧАЕ ПОСТУПЛЕНИЯ ЗАКАЗА НА КУХНЮ КРЕПИТЬ $ (оплатить и выйти)
            icon: Icon(Icons.arrow_back_rounded),
            onPressed: () {
              APIService.outFromPlace().then((value) => {
                    if (value) {Navigator.pop(context)}
                  }); //ВОЗВРАТ НА ТОЧКУ ТОРГОВЛИ
              //ПРИ ПОПАДАНИИ ЗАКАЗА НА КУХНЮ ДОЛЖНО ПОЯВИТСЯ ОКНО ПРИ НАЖАТИИ ОБ ОПЛАТЕ
            },
            color: Colors.white,
          ),
          actions: [
            InkWell(
                child: Container(
              child: Container(
                alignment: Alignment.center,
                width: 120.0,
                child: Text("sum: \$100"),
              ),
            )),
            InkWell(
                //$ ДОЛЖЕН ПОЯВИТСЯ ТОЛЬКО ПРИ ПРИНЯТЫХ ЗАКАЗАХ КУХНЕЙ
                child: Container(
              alignment: Alignment.center,
              width: 45.0,
              child: IconButton(
                icon: Icon(Icons.attach_money),
                onPressed: () {
                  //ОПЛАТА
                },
                color: Colors.white,
              ),
            ))
          ],
        ),
        body: Column(children: [
          _Stories(),
          showList(),
        ]));
  }
}

class _Stories extends StatelessWidget {
  const _Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        elevation: 0,
        child: SizedBox(
          height: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 70,
                        child: _StoryCard(
                          storyData: StoryData(
                            name: "${User.firstName} ${User.lastName}",
                            url: User.imageUrl,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _StoryCard extends StatelessWidget {
  const _StoryCard({
    Key? key,
    required this.storyData,
  }) : super(key: key);

  final StoryData storyData;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          height: 60,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: NetworkImage(storyData.url))),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Text(
              storyData.name,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 11,
                letterSpacing: 0.3,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
