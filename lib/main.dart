import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'secondWidget.dart';

void main() => runApp(MyApp(window.defaultRouteName));

Widget MyApp(String route){
  switch (route){
    case 'firstWidget':
      return MyHomePage(title: "firstWidget",);
    case 'secondWidget' :
      return secondWidget();
    default:
      return Container(
        width: 375,
        height: 667,
        color: Colors.orange,
      );
  }
}

//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
//    );
//  }
//}

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
          children: <Widget>[
            aaa(),
            bbb(),
          ],
        ),
      ),
    );
  }
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
                decoration: TextDecoration.none),),
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
                decoration: TextDecoration.none),),
        ),
      ),
    ),
  );
}
