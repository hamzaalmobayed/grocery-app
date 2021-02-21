import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import 'home.dart';

class Details extends StatefulWidget {
  @override
  DetailsState createState() => DetailsState();
}

class DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                child: Hero(
                  tag: "hamza6",
                    child: Image.asset(
                      "images/grape.jpg",
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
