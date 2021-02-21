import 'package:flutter/material.dart';

import 'home.dart';
class Category extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CategoryState();
  }

}
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
Color c= Color.fromRGBO(242,60,60,1);
Orientation orientation=Orientation.portrait;
class CategoryState extends State<Category>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        toolbarHeight: 80,
        title: Text(
          "Categories",
          style: TextStyle(
              color: Colors.white, fontSize: 23),
        ),
        backgroundColor: c,
        leading: IconButton(
            color:Colors.white,
            iconSize: 30,
            icon: Icon(Icons.arrow_back),
            onPressed: ()=>Navigator.push(context,
                MaterialPageRoute(
                  builder: (con)=>Home(),
                )
            )
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.builder(
          itemCount: catg.length,
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3),
          itemBuilder: (BuildContext context, int index) {
            return ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Container(
                margin: EdgeInsets.all(10),
                width: 100,
                height: 100,
                child: FlatButton(
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(catg[index]["image"]),
                      Text(
                        catg[index]["text"],
                        style: TextStyle(
                            color:  Color.fromRGBO(175,63,48, 1), fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromRGBO(251,204,211,1),
                    border: Border.fromBorderSide(BorderSide(
                      color: Color.fromRGBO(251, 223, 224, 1),
                      width: 3,
                      style: BorderStyle.solid,
                    ))),
              ),
            ) ;
          },
        ),
      ),
    );
  }

}