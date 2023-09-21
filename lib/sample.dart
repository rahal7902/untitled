import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'loginpage.dart';

void main(){
  runApp(DevicePreview(
    builder: (BuildContext context)=> MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner:false,
        home: MyApp(),
    ),
  ));
}
class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Timer(Duration(seconds: 10), () {
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
      decoration: BoxDecoration(gradient: LinearGradient(colors: [
        Colors.red,Colors.green,Colors.yellow,
      ],begin: Alignment.bottomCenter,end: Alignment.centerLeft

      )),

     child: Column(
       children: [
         Padding(
           padding: const EdgeInsets.only(top: 30),
           child: Image(image: AssetImage("assets/iconss/zamzam2.jpg")),
         ),
         Padding(
           padding: const EdgeInsets.only(top: 65),
           child: Text("Please wait while we are loading......",
             style: GoogleFonts.lato(
               textStyle: Theme.of(context).textTheme.displayLarge,
               fontSize: 48,
               fontWeight: FontWeight.w700,
               fontStyle: FontStyle.italic,

           ),
             ),
         ),
         Text("hello world",
         style: TextStyle(fontSize: 30,fontFamily: "Poppins",),),
       ],
     ),
    ),
    );
  }
}

