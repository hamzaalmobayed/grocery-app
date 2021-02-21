import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import 'home.dart';

class Edit extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EditState();
  }
}
class EditState extends State<Edit>{
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
          "Edit Profile",
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
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                backgroundImage: AssetImage("images/person.jpg"),
                radius: 80,
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                decoration: InputDecoration(
                   hintText: "Name",
                  labelText: "Name",
                  hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  labelText: "Email",
                  hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              RaisedButton(
                elevation: 18,
                color: c,
                onPressed:(){},
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  child: Text(
                    "Update",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}