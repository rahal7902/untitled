import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Assigmt5(),);
    }
  ));
}

class Assigmt5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
 return Scaffold(
appBar: AppBar(

),

 );
  }
}