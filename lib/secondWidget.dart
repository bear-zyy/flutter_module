import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/services.dart';

class secondWidget extends StatefulWidget{

 @override

 _secondWidgetState createState() => _secondWidgetState();

}

class _secondWidgetState extends State<secondWidget>{

  static const methodChannel = const MethodChannel("secondChannelZyy");

  Future<dynamic> handelMethod(MethodCall methodCall) {
    if (methodCall.method == "secondChannelZyy_NativeToFlutter") {
      print("methodCall.arguments" + methodCall.arguments);
    }
    return Future.value("Success");
  }


  @override
  Widget build(BuildContext context) {

    methodChannel.setMethodCallHandler(handelMethod);

    // TODO: implement build
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.orange,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          GestureDetector(
            onTap: ()=>back(),
            child: Padding(
              padding: EdgeInsets.only(top: 20 , bottom: 0),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.black,
                child: Center(
                  child: Text("back1" ,
                    style: TextStyle(color: Colors.red , fontSize: 15 , fontWeight: FontWeight.w400 , decoration: TextDecoration.none),
                    textDirection: TextDirection.ltr,),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: ()=>back2(),
            child: Padding(
              padding: EdgeInsets.only(top: 20 , bottom: 0),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.black,
                child: Center(
                  child: Text("back2" ,
                    style: TextStyle(color: Colors.red , fontSize: 15 , fontWeight: FontWeight.w400 , decoration: TextDecoration.none),
                    textDirection: TextDirection.ltr,),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: ()=>invokeMap(),
            child: Padding(
              padding: EdgeInsets.only(top: 20 , bottom: 0),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.black,
                child: Center(
                  child: Text("invokeMap" ,
                    style: TextStyle(color: Colors.red , fontSize: 15 , fontWeight: FontWeight.w400 , decoration: TextDecoration.none),
                    textDirection: TextDirection.ltr,),
                ),
              ),
            ),
          ),
          Container(width: 100 , height: 100, color: Colors.white,),
          Container(width: 100 , height: 100, color: Colors.white,),
        ],
      ),
    );
  }

  back(){
    Navigator.pop(context);
  }

  back2(){
    methodChannel.invokeMethod("secondChannelZyy_back" , "data");
  }

  invokeMap(){
    Map<String,dynamic> value = {"key":"1" , "data":"2"};
    methodChannel.invokeMapMethod("secondChannelZyy_invokeMap",value);
  }

}