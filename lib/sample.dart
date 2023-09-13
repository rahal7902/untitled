import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginpage.dart';

void main(){
  runApp(MaterialApp(home: MyApp(),
      debugShowCheckedModeBanner:false
  ));
}
class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginpage()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('ZAM ZAM',
            style: TextStyle(color: Colors.yellowAccent,fontSize: 40,
                fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
        ),),
    body: Container(height: double.infinity,
      width: double.infinity,
      color: Colors.blueGrey,
     child: Column(
       children: [
         Padding(
           padding: const EdgeInsets.only(top: 30),
           child: Image(image: AssetImage("assets/iconss/zamzam2.jpg")),
         ),
         Padding(
           padding: const EdgeInsets.only(top: 65),
           child: Text("Please wait while we are loading......",
             style: TextStyle(color: Colors.yellow[600],fontSize: 25),),
         )
       ],
     ),
    ),
    );
  }
}

