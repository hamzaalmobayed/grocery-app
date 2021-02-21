import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import 'home.dart';
class Cart extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CartState();
  }

}

class CartState extends State<Cart>{

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
        margin: EdgeInsets.only(left: 20,right: 20),
        height: 120,
        width: MediaQuery.of(context).size.width*0.95,
        child: Row(
          children: [
            Image.asset(img,width: 120,),
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
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.add_circle_outline,color: c,size: 20,),
                      color: c,
                      iconSize: 20,
                      onPressed: (){
                        add(index);
                      },
                    ),
                    Text(
                      pro[index]["counter"],
                      style: TextStyle(
                          color: c,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.remove_circle_outline,color: c,size: 20,),
                      color: c,
                      iconSize: 20,
                      onPressed: (){
                        sub(index);
                      },
                    ),
                  ],
                ),

              ],
            ),
            SizedBox(width: 40,),
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
            "My Cart",
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
      body: Padding(
        padding: const EdgeInsets.only(top:15.0),
        child: ListView.builder(
                itemCount: pro.length,
                itemBuilder: (context,i){
                  return SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        order(pro[i]["image"], pro[i]["text"], pro[i]["amount"],i),
                        i==pro.length-1?Padding(
                          padding: const EdgeInsets.only(right:15.0,top:15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Price of Products   40\$",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              SizedBox(height: 20,),
                              Text(
                                "Price of Delivery   10\$",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              SizedBox(height: 20,),
                              Text(
                                "Cart Total   100\$  ",
                                style: TextStyle(
                                    color: c,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23),
                              ),
                              SizedBox(height: 20,),
                              Container(
                                height: 50,
                                padding: EdgeInsets.all(5),
                                width: 200,
                                color: c,
                                child: FlatButton(
                                  color: c,
                                  child: Text(
                                    "Secure Checkout",
                                    style: TextStyle(
                                        color:Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ):Text(""),
                        SizedBox(height: 20,),
                      ],
                    ),
                  );
                }
            ),
      ),
         
    );
  }

}

