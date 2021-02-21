import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import 'home.dart';
class Wish extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return WishState();
  }

}

class WishState extends State<Wish>{

  add(i){
    setState(() {
      int qun=int.parse(pro[i]["counter"]);
      int y=++qun;
      pro[i]["counter"]=y.toString();
    });
  }
  sub(i){
    setState(() {
      int qun=int.parse(pro[i]["counter"]);
      int y=--qun;
      pro[i]["counter"]=y.toString();
    });
  }
  Widget order(img, desc, amount,index) {
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
            Image.asset(img,width: MediaQuery.of(context).size.width*0.25,),
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
                FlatButton(
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(
                        color: c,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),

              ],
            ),
            SizedBox(width: 30,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.delete,color: c,size: 25,),
                  color: c,
                  iconSize: 20,
                  onPressed: (){
                    setState(() {
                      pro.removeAt(index);
                    });
                  },
                ),
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
              ],
            )
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
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
          "My Wishlist",
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
      body:  ListView.builder(
          itemCount: pro.length,
          itemBuilder: (context,i){
            return order(pro[i]["image"], pro[i]["text"], pro[i]["amount"],i);
          }
      ),
    );
  }

}