import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'secondWidget.dart';

void main() => runApp(MyApp(window.defaultRouteName));

Widget MyApp(String route){
  switch (route){
    case 'firstWidget':
      return firstWidget();
    case 'secondWidget' :
      return secondWidget();
    case 'MyMain' :
      return MyMain();
    default:
      return MyMain();
  }
}

class MyMain extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "firstWidget":(context)=>firstWidget(),
        "secondWidget":(context)=>secondWidget(),
      },
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 375,
      height: 667,
      color: Colors.red,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20,bottom: 20),
              child: Button(context),
            ),
            GestureDetector(
              onTap: ()=>jumpToFirstWidget(context),
              child: Container(
                width: 100,
                height: 100,
                color: Color(0xff2A78ED),
                child: Center(
                  child: Text("first" ,
                    style: TextStyle(color: Colors.white , fontWeight: FontWeight.w400, fontSize: 17, decoration: TextDecoration.none),
                    textDirection: TextDirection.ltr,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget Button(BuildContext context){
  return GestureDetector(
    onTap: ()=>func(context),
    child: Container(
      width: 100,
      height: 100,
      color: Color(0xff2A78ED),
      child: Center(
        child: Text("seceond" ,
          style: TextStyle(color: Colors.yellow , fontSize: 17,fontWeight: FontWeight.w400 , decoration: TextDecoration.none),
          textDirection: TextDirection.ltr,),
      ),
    ),
  );
}

func(BuildContext context){
  Navigator.push(context, new MaterialPageRoute(
    builder: (context){
      return secondWidget();
      },
  ),
  );
}


jumpToFirstWidget(BuildContext context){

  Navigator.pushNamed(context, "firstWidget");

}

Widget firstWidget(){
  return Container(
    width: 375,
    height: double.infinity,
    color: Colors.red,
    child: Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 20 , bottom: 20),
            child: GestureDetector(
              onTap: ()=>back(),
              child: Container(
                child: Center(
                  child: Text("back" ,
                    style: TextStyle(color: Colors.black , fontWeight: FontWeight.w400, fontSize: 16),
                    textDirection: TextDirection.ltr,),
                ),
              ),
            ),
          ),
          aaa(),
          bbb(),
        ],
      ),
    ),
  );
}

back(){
//  Navigator.pop(context);
}

Widget aaa(){
  return Container(
    width: 200,
    height: 200,
    color: Colors.white,
    child: Center(
      child: Container(
        height: 100,
        width: 100,
        color: Colors.yellow,
        child: Center(
          child: Text("aaa" ,
            style: TextStyle(color: Colors.white , fontWeight: FontWeight.w500 , fontSize: 20 ,
                decoration: TextDecoration.none),textDirection: TextDirection.ltr),
        ),
      ),
    ),
  );
}

Widget bbb(){
  return Container(
    width: 200,
    height: 200,
    color: Colors.yellow,
    child: Center(
      child: Container(
        height: 100,
        width: 100,
        color: Colors.white,
        child: Center(
          child: Text("bbb" ,
            style: TextStyle(color: Colors.black , fontWeight: FontWeight.w500 , fontSize: 20 ,
                decoration: TextDecoration.none),textDirection: TextDirection.ltr),
        ),
      ),
    ),
  );
}
