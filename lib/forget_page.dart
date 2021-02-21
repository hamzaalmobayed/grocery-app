import 'package:flutter/material.dart';
import 'package:review_app/main.dart';
class Forget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ForgetState();
  }

}
Color c= Color.fromRGBO(242,60,60,1);
class ForgetState extends State<Forget>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              margin: EdgeInsets.only(left: 30,right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 10,),
                  Container(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        color:c,
                        iconSize: 30,
                        icon: Icon(Icons.arrow_back),
                        onPressed: ()=>Navigator.push(context,
                            MaterialPageRoute(
                              builder: (con)=>AfterSplash(),
                            )
                        )
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Forget Password",style: TextStyle(color: c,fontWeight: FontWeight.bold,fontSize: 25),),
                  SizedBox(height: 30,),
                  Image.asset("images/lock3.png"),
                  SizedBox(height: 30,),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Enter Your Email Address",
                      hintStyle: TextStyle(fontSize: 20,color: c,),

                    ),
                  ),
                  SizedBox(height: 80,),
                  Container(
                    width: 300,
                    padding: EdgeInsets.all(10),
                    color: c,
                    child: FlatButton(
                      child: Text("Send Reset Link",style:TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,) ,),
                      color: c,
                      onPressed: (){},
                      padding: EdgeInsets.all(10),

                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      )
    );
  }

}