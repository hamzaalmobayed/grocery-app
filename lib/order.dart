import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import 'home.dart';

class Order extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return OrderState();
  }
}

List<Map<String, String>> pro = [
  {
    "image": "images/apricot.png",
    "text": "Apricot",
    "price": "10\$",
    "amount": "30 kilos"
  },
  {
    "image": "images/cherrys.png",
    "text": "Cherry",
    "price": "5\$",
    "amount": "60 kilos"
  },
  {
    "image": "images/grapes.png",
    "text": "Grape",
    "price": "15\$",
    "amount": "10 kilos"
  },
  {
    "image": "images/kiwis.png",
    "text": "Kiwi",
    "price": "40\$",
    "amount": "100 kilos"
  },
  {
    "image": "images/lemons.png",
    "text": "Lemon",
    "price": "50\$",
    "amount": "100 kilos"
  },
  {
    "image": "images/straw.png",
    "text": "Strawberry",
    "price": "50\$",
    "amount": "40 kilos"
  },
];

Widget order(img, desc, amount, date) {
  return ClipRRect(
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(50),
      bottomRight: Radius.circular(20),
      topLeft: Radius.circular(20),
      topRight: Radius.circular(50),
    ),
    child: Container(
      margin: EdgeInsets.all(20),
      height: 120,
      child: Row(
        children: [
          Builder(builder:(context)=> Image.asset(img,width: MediaQuery.of(context).size.width*0.25,)),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                desc,
                style: TextStyle(
                    color: Color.fromRGBO(175, 63, 48, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text(
                amount,
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text(
                date,
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(10),
            topLeft: Radius.circular(10),
            topRight: Radius.circular(40),
          ),
          color: Color.fromRGBO(251, 204, 211, 1),
          border: Border.fromBorderSide(BorderSide(
            color: c,
            width: 1,
            style: BorderStyle.solid,
          ))),
    ),
  );
}

class OrderState extends State<Order> {
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
          "My Order",
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
      body: ListView.builder(
        itemCount: pro.length,
          itemBuilder: (context,i){
          return order(pro[i]["image"], pro[i]["text"], pro[i]["amount"],DateTime.now().toString());
          }
      ),
    );
  }
}
