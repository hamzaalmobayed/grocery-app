import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import 'home.dart';

class Notifications extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NotificationState();
  }
}
Widget notify(img,desc,time){
  return Container(
    height: 120,
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: c,
        borderRadius: BorderRadius.all(Radius.circular(20))
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            SizedBox(width: 10,),
            Image.asset(img,height: 60,width: 100,),
            SizedBox(width: 30,),
            Text(
              desc,
              overflow: TextOverflow.fade,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(bottom:8,right: 8),
          alignment: Alignment.bottomRight,
          child: Text(
            time,
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        )

      ],
    ),
  );
}

class NotificationState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      elevation: 10,
      toolbarHeight: 80,
      centerTitle: true,
      actions: [
        IconButton(
            color: Colors.white,
            iconSize: 30,
            icon: Icon(Icons.home),
            onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (con) => Home(),
                ))),
      ],
      title: Text(
        "Notifications",
        style: TextStyle(color: Colors.white, fontSize: 23),
      ),
      backgroundColor: c,
      leading: IconButton(
          color: Colors.white,
          iconSize: 30,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (con) => Home(),
              ))),
    ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            notify("images/veg.png", "it is so healthy for you", "25 minutes ago"),
            notify("images/veg.png", "it is so healthy for you", "25 minutes ago"),
            notify("images/veg.png", "it is so healthy for you", "25 minutes ago"),
            notify("images/veg.png", "it is so healthy for you", "25 minutes ago"),
            notify("images/veg.png", "it is so healthy for you", "25 minutes ago"),
            notify("images/veg.png", "it is so healthy for you", "25 minutes ago"),
            notify("images/veg.png", "it is so healthy for you", "25 minutes ago"),
            notify("images/veg.png", "it is so healthy for you", "25 minutes ago"),
            notify("images/veg.png", "it is so healthy for you", "25 minutes ago"),
            notify("images/veg.png", "it is so healthy for you", "25 minutes ago"),
            notify("images/veg.png", "it is so healthy for you", "25 minutes ago"),
          ],
        ),
      ),
    );
  }
}
