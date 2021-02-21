import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:review_app/cart.dart';
import 'package:review_app/category.dart';
import 'package:review_app/notifucation.dart';
import 'package:review_app/product.dart';
import 'package:review_app/profile.dart';
import 'package:review_app/wishlist.dart';

import 'order.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

Color c = Color.fromRGBO(242, 60, 60, 1);
List<String> images = [
  "images/f1.jpg",
  "images/f2.jpg",
  "images/f3.jpg",
  "images/f4.jpg",
  "images/f5.jpg",
];
List<Map<String, String>> pro = [
  {
    "image": "images/apricot.png",
    "text": "Apricot",
    "price": "10\$",
    "amount": "30 kilos",
    "counter":"1",
  },
  {
    "image": "images/cherrys.png",
    "text": "Cherry",
    "price": "5\$",
    "amount": "60 kilos",
    "counter":"1",
  },
  {
    "image": "images/grapes.png",
    "text": "Grape",
    "price": "15\$",
    "amount": "10 kilos",
    "counter":"1",
  },
  {
    "image": "images/kiwis.png",
    "text": "Kiwi",
    "price": "40\$",
    "amount": "100 kilos",
    "counter":"1",
  },
  {
    "image": "images/lemons.png",
    "text": "Lemon",
    "price": "50\$",
    "amount": "100 kilos",
    "counter":"1",
  },
  {
    "image": "images/straw.png",
    "text": "Strawberry",
    "price": "50\$",
    "amount": "40 kilos",
    "counter":"1",
  },
];
List<Map<String, String>> catg = [
  {
    "image": "images/veg.png",
    "text": "Vegetables",
  },
  {
    "image": "images/herbs.png",
    "text": "Herbs",
  },
  {
    "image": "images/spices.png",
    "text": "Spices",
  },
  {
    "image": "images/food.png",
    "text": "Fast Food",
  },
  {
    "image": "images/tea.png",
    "text": "Tea Coffee",
  },
  {
    "image": "images/fruit.png",
    "text": "Fruits",
  },
  {
    "image": "images/oils.png",
    "text": "Oils",
  },
  {
    "image": "images/nuts.png",
    "text": "Nuts",
  }
];

class HomeState extends State<Home> {
  Widget button(txt,icon,f){
    return FlatButton(
      onPressed: f,
      child: Row(
        children: [
          Icon(
            icon,
            color: c,
            size: 30,
          ),
          SizedBox(width: 40,),
          Text(
            txt,
            style: TextStyle(
                color:Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
        ],
      ),
    );
  }
  Widget categories(img, txt) {
    return Row(
      children: [
        SizedBox(width: 20),
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Container(
            width: 125,
            height: 120,
            child: FlatButton(
              onPressed: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(img),
                  Text(
                    txt,
                    style: TextStyle(
                        color: c, fontWeight: FontWeight.bold, fontSize: 17),
                  ),
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
        ),
      ],
    );
  }

  Widget products(img, txt, price, amount) {
    return Row(
      children: [
        SizedBox(width: 20),
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Container(
            width: 160,
            height: 200,
            child: FlatButton(
              onPressed: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ClipRRect(
                    child: Image.asset(
                      img,
                      width: 90,
                      height: 100,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        txt,
                        style: TextStyle(
                            color: c,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      Text(
                        price,
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
                    amount,
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
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: c,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(
              Icons.menu,
              size: 30,
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: ()=>Navigator.pushReplacement(context,
                MaterialPageRoute(
                  builder: (con)=>Cart(),
                )
            ),
            icon: Icon(
              Icons.local_grocery_store,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  height: 200,
                  color: c,
                  child: FlatButton(
                    onPressed: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (con) => Profile(),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        textDirection: TextDirection.ltr,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 40,
                            child: IconButton(
                              icon: Icon(
                                Icons.camera_alt,
                                color: c,
                              ),
                              iconSize: 50,
                              color: c,
                            ),
                          ),
                          Text(
                            "Hamza",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            "halmbyd991@gmail.com",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                button("home", Icons.home,() => Navigator.of(context).pop()),
                button("My Cart", Icons.local_grocery_store,()=>Navigator.pushReplacement(context,
                    MaterialPageRoute(
                      builder: (con)=>Cart(),
                    )
                )),
                button("My Orders", Icons.grid_on,() => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (con) => Order(),
                    ))),
                button("My Wishlist", Icons.favorite_border,()=>Navigator.pushReplacement(context,MaterialPageRoute(
                  builder: (con)=>Wish(),
                )
                )),
                button("Notifications", Icons.notifications,() => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (con) => Notifications(),
                    ))),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Text(
                    "Products",
                    style: TextStyle(
                        color:Colors.black54,

                        fontSize: 19),
                  ),
                ),
                SizedBox(height: 10,),
                button("Categories", Icons.category,()=>Navigator.pushReplacement(context,MaterialPageRoute(
                  builder: (con)=>Category(),
                )
                ),),
                button("View Products", Icons.shopping_basket,()=>Navigator.pushReplacement(context,
                    MaterialPageRoute(
                      builder: (con)=>Product(),
                    )
                )),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Text(
                    "Application Performances",
                    style: TextStyle(
                        color:Colors.black54,

                        fontSize: 19),
                  ),
                ),
                SizedBox(height: 10,),
                button("Help & Support", Icons.help_outline,(){}),
                button("Settings", Icons.settings,(){}),
                button("Languages", Icons.language,(){})
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
                shrinkWrap: true,
                children: [Container(
                  width:500,
                  height: 720,
                  child: Container(
                    margin: EdgeInsets.only(top:80),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                            height: 200,
                            aspectRatio: 16 / 9,
                            viewportFraction: 0.8,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 3),
                            autoPlayAnimationDuration: Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            scrollDirection: Axis.horizontal,
                          ),
                          items: images.map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                                  child: Image.asset(
                                    i,
                                    fit: BoxFit.contain,
                                    height: 100,
                                  ),
                                );
                              },
                            );
                          }).toList(),
                        ),
                        Row(
                          children: [
                            SizedBox(width: 15,),
                            Text(
                              "Categories",
                              style: TextStyle(
                                  color: c,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            SizedBox(width: 140,),
                            FlatButton(
                              onPressed: ()=>Navigator.pushReplacement(context,MaterialPageRoute(
                                builder: (con)=>Category(),
                              )
                              ),
                              child: Text(
                                "View all",
                                style: TextStyle(
                                    color: c,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          reverse: true,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: catg.map((i) {
                                return Builder(
                                  builder: (BuildContext context) {
                                    return categories(i["image"], i["text"]);
                                  },
                                );
                              }).toList()),
                        ),
                        SizedBox(height: 1),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(width: 10,),
                            Text(

                              "Products",
                              style: TextStyle(
                                  color: c,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            SizedBox(width: 140,),
                            FlatButton(
                              onPressed: ()=>Navigator.pushReplacement(context,
                                  MaterialPageRoute(
                                    builder: (con)=>Product(),
                                  )
                              ),
                              child: Text(
                                "View all",
                                style: TextStyle(
                                    color: c,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          reverse: true,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: pro.map((i) {
                                return Builder(
                                  builder: (BuildContext context) {
                                    return products(i["image"], i["text"], i["price"],
                                        i["amount"]);
                                  },
                                );
                              }).toList()),
                        ),
                      ],
                    ),
                  ),
                ),]
            ),
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(
                alignment: Alignment.topRight,
                height: 60,
                child: Text(""),
                decoration: BoxDecoration(
                  color: c,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                ),
              ),
            ),

            Positioned(
              top: MediaQuery.of(context).size.height * 0.01,
              left: MediaQuery.of(context).size.height * 0.01,
              right: MediaQuery.of(context).size.height * 0.01,
              child: Column(
                children: [

                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.fromBorderSide(
                          BorderSide(color: c, style: BorderStyle.solid, width: 3)),
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

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
