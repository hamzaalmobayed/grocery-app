import 'package:flutter/material.dart';
import 'package:review_app/forget_page.dart';
import 'package:review_app/home.dart';
import 'package:splashscreen/splashscreen.dart';
void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}
Color color= Color.fromRGBO(242,60,60,1);
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return new SplashScreen(
        seconds: 10,
        navigateAfterSeconds: new AfterSplash(),
        title: new Text('Grocery App',
          style: new TextStyle(
            color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30.0
          ),),
        image:Image.asset('images/veg.png'),
        backgroundColor:color,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 200.0,
        loaderColor: Colors.white
    );
  }
}

class AfterSplash extends StatelessWidget {
  Widget tab1(context){
    return SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.only(bottom: 60),
          child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(Icons.person,color: color,size: 25,),
              labelStyle: TextStyle(fontSize: 20,),
              labelText: "Email",
            ),
          ),
          TextField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: InputDecoration(

              border: InputBorder.none,
              prefixIcon: Icon(Icons.remove_red_eye,color: color,size: 25,),
              labelStyle: TextStyle(fontSize: 20,),
              labelText: "Password",
            ),
          ),
          Container(
            width: 150,
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: FlatButton(
              color: color,
              onPressed: ()=>Navigator.pushReplacement(context,MaterialPageRoute(
                builder: (con)=>Home(),
              )
              ),
              child: Text("Login",style:TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold) ,),
            ),
          )
        ],
      )),
    );
  }
  Widget tab2(){
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom:80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            TextField(

              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.person,color: color,size: 25,),
                labelStyle: TextStyle(fontSize: 20,),
                labelText: "Email",

              ),
            ),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.remove_red_eye,color: color,size: 25,),
                labelStyle: TextStyle(fontSize: 20,),
                labelText: "Password",
              ),
            ),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.remove_red_eye,color: color,size: 25,),

                labelStyle: TextStyle(fontSize: 20,),
                labelText: "Confirm Password",
              ),
            ),
            Container(
              width: 150,
              alignment: Alignment.center,
              child: FlatButton(

                color: color,
                onPressed: (){},
                child: Text("Sign Up",style:TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold) ,),
              ),
            )
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {

    return new Scaffold(

      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top:0,
              right: 0,
              left: 0,
              child: Container(
                alignment: Alignment.topCenter,
                height: MediaQuery.of(context).size.height*0.5,

                child:Image.asset('images/veg.png',width: 300,),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.only(bottomLeft:Radius.circular(40),bottomRight:Radius.circular(40)  ),
                ),
              ),
            ),

            Positioned(
              top: MediaQuery.of(context).size.height*0.3,
              left: MediaQuery.of(context).size.width*0.08,
              right: MediaQuery.of(context).size.width*0.08,
              child: ClipRRect(

                borderRadius: BorderRadius.all(Radius.circular(50)),
                child: Column(

                  children: [
                    Container(


                      height: MediaQuery.of(context).size.height*0.42,
                      width: MediaQuery.of(context).size.height*0.4,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        child: DefaultTabController(
                          length: 2,
                          child: Scaffold(

                            appBar:AppBar(
                              leading: Text(""),
                              toolbarHeight: 80,
                                backgroundColor: Color.fromRGBO(242,50,50,1),
                                bottom: TabBar(
                                  tabs: [
                                    Tab(child: Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                                    Tab(child: Text("Sign Up",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),),
                                  ],
                                ),
                              ),
                            body: TabBarView(
                              children: [

                                    tab1(context),
                                    tab2(),

                              ],
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(242,73,60,1),
                        border: Border.fromBorderSide(BorderSide(color: color,style: BorderStyle.solid,width: 2)),
                        borderRadius: BorderRadius.all(Radius.circular(50)),

                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: FlatButton(
                        textColor: color,
                        child: Text("Forget Password?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                        onPressed: ()=>Navigator.pushReplacement(context,MaterialPageRoute(
                          builder: (con)=>Forget(),
                        )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Positioned(
              bottom:0.5 ,
              top:MediaQuery.of(context).size.width*1.6 ,
              left: MediaQuery.of(context).size.width*0.03,
                right: MediaQuery.of(context).size.width*0.03,
              child: Column(children:[
                Text("Or Sign Up With",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: color),),

                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(child: Image.asset("images/facebook.png",width: 100,height: 80,),onPressed: (){},),
                  FlatButton(child: Image.asset("images/email.jpg",width: 40,height: 40,),onPressed: (){},),
                  FlatButton(child: Image.asset("images/inestagram.jpg",width: 80,height: 50,),onPressed: (){},)
                ],
              ),])
            )
          ]
        ),
      )
    );
  }
}