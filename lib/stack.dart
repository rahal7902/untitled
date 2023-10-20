import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Stackeg(),
    );
  }));
}

class Stackeg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("fbesfvv"),
      ),
      body: Stack(
        children: [

          Positioned(
            child: Container(
              color: Colors.pinkAccent,
              height: 100,
              width: 100,
            ),
            left: 20,top: 200,
          ),
          Positioned(
            child: Container(
              color: Colors.red,
              height: 70,
              width: 70,
            ),
            right: 100,top: 150,
          ),
          Positioned(
            child: Container(
              color: Colors.blueAccent,
              height: 50,
              width: 50,
            ),
            top: 50,
          ),
          Positioned(
            child: Container(
              color: Colors.black,
              height: 80,
              width: 80,
            ),
            bottom: 200,
          )
        ],
      ),
    );
  }
}
