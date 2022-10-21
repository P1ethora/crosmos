import 'package:crosmos/shared/user.dart';
import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {

  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
return Container(
  color: Color.fromRGBO(67,80,159, 1),
  width: double.infinity,
  height: 200,
  padding: EdgeInsets.only(top: 20.0),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        margin: EdgeInsets.only(bottom: 10),
        height: 70,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(User.imageUrl)
          )
        ),
      ),
      Text("${User.firstName} ${User.lastName}", style: TextStyle(color: Colors.white, fontSize: 20)),
      Text(User.email, style: TextStyle(color: Colors.grey[200], fontSize: 14))

    ]
  ),
);
  }



}