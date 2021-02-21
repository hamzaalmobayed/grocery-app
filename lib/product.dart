

import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:review_app/details.dart';

import 'home.dart';
class Product extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ProductState();
  }

}

List<String> images = [
  "images/f1.jpg",
  "images/f2.jpg",
  "images/f3.jpg",
  "images/f4.jpg",
  "images/f5.jpg",
];

Orientation orientation=Orientation.portrait;
class ProductState extends State<Product>{
  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> pro = [
      {
        "image": "images/apricot.png",
        "text": "Apricot",
        "price": "10\$",
        "amount": "30 kilos",
        "function":()=>Navigator.pushReplacement(context,
            MaterialPageRoute(
              builder: (con)=>Details(),
            )
        ),
        "tag":"hamza6",
      },
      {
        "image": "images/cherrys.png",
        "text": "Cherry",
        "price": "5\$",
        "amount": "60 kilos",
      "function":()=>Navigator.pushReplacement(context,
      MaterialPageRoute(
      builder: (con)=>Details(),
      )
      ),
        "tag":"hamza5",
      },
      {
        "image": "images/grapes.png",
        "text": "Grape",
        "price": "15\$",
        "amount": "10 kilos",
        "function":()=>Navigator.pushReplacement(context,
            MaterialPageRoute(
              builder: (con)=>Details(),
            )
        ),
        "tag":"hamza4",
      },
      {
        "image": "images/kiwis.png",
        "text": "Kiwi",
        "price": "40\$",
        "amount": "100 kilos",
        "function":()=>Navigator.pushReplacement(context,
            MaterialPageRoute(
              builder: (con)=>Details(),
            )
        ),
        "tag":"hamza3",
      },
      {
        "image": "images/lemons.png",
        "text": "Lemon",
        "price": "50\$",
        "amount": "100 kilos",
        "function":()=>Navigator.pushReplacement(context,
            MaterialPageRoute(
              builder: (con)=>Details(),
            )
        ),
        "tag":"hamza2",
      },
      {
        "image": "images/straw.png",
        "text": "Strawberry",
        "price": "50\$",
        "amount": "40 kilos",
        "function":()=>Navigator.pushReplacement(context,
            MaterialPageRoute(
              builder: (con)=>Details(),
            )
        ),
        "tag":"hamza1",
      },
    ];
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 150) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        toolbarHeight: 80,
        title: Text(
          "Products",
          style: TextStyle(
              color: Colors.white, fontSize: 23),
        ),
        backgroundColor: c,
        leading: IconButton(
            color:Colors.white,
            iconSize: 30,
            icon: Icon(Icons.arrow_back),
            onPressed: ()=>Navigator.pushReplacement(context,
                MaterialPageRoute(
                  builder: (con)=>Home(),
                )
            )
        ),
      ),
      body: SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(height: 30,),
            Container(

            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color.fromRGBO(252, 236, 236, 1),
              border: Border.fromBorderSide(
                  BorderSide(color: Color.fromRGBO(251, 223, 224, 1), style: BorderStyle.solid, width: 3)),
              borderRadius: BorderRadius.all(Radius.circular(14)),
            ),
            width: MediaQuery.of(context).size.height * 0.44,
            height: MediaQuery.of(context).size.height * 0.1,
            margin: EdgeInsets.only(left: 30, right: 30),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter The Item To Be Search",
                hintStyle: TextStyle(fontSize: 18, color: c),
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  size: 20,
                  color: c,
                ),
                suffixIcon: Icon(
                  Icons.list,
                  size: 24,
                  color: c,
                ),
              ),
            ),
          ),
            GridView.builder(
              shrinkWrap: true,
              controller: new ScrollController(keepScrollOffset: false),
              padding: EdgeInsets.all(10),
              itemCount: pro.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3,
                childAspectRatio: (itemWidth / itemHeight),),
              itemBuilder: (BuildContext context, int index) {
                return ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    width: 160,
                    height: 200,
                    child: FlatButton(
                      onPressed: pro[index]["function"],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ClipRRect(
                            child: GestureDetector(
                              child: Hero(
                                tag: pro[index]["tag"],
                                child: Image.asset(
                                  pro[index]["image"],
                                  width: 90,
                                  height: 100,
                                ),
                              ),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                pro[index]["text"],
                                style: TextStyle(
                                    color: c,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              Text(
                                pro[index]["price"],
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            pro[index]["amount"],
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              LikeButton(
                                size: 25,
                                circleColor: CircleColor(
                                    start: Color(0xff00ddff), end: Color(0xff0099cc)),
                                bubblesColor: BubblesColor(
                                  dotPrimaryColor: Color(0xff33b5e5),
                                  dotSecondaryColor: Color(0xff0099cc),
                                ),
                                likeBuilder: (bool isLiked) {
                                  return Icon(
                                    Icons.favorite,
                                    color: isLiked ? c : Colors.grey,
                                    size: 25,
                                  );
                                },
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.local_grocery_store,
                                  size: 25,
                                  color: c,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromRGBO(252, 236, 236, 1),
                        border: Border.fromBorderSide(BorderSide(
                          color: Color.fromRGBO(251, 223, 224, 1),
                          width: 3,
                          style: BorderStyle.solid,
                        ))),
                  ),
                );
              },
            ),
          ]
        ),
      ),
    );
  }

}
