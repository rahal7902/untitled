import 'dart:html';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Stackeg2(),
    );
  }));
}

class Stackeg2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("gvdvfsdv "),
      ),
      body: Stack(
        children: [
          Positioned(
            child: Container(
              color: Colors.lime[300],
              height: 1000,
              width: 400,
            ),
          ),
          Positioned(
            child: Container(
              color: Colors.lime,
              height: 1000,
              width: 400,
            ),
            top: 150,
          ),
          Positioned(
            child: Container(
              child: Image.asset(
                "assets/iconss/rahal.jpg",
                fit: BoxFit.fill,
              ),
              color: Colors.blueAccent,
              height: 150,
              width: 150,
            ),
            top: 80,
            left: 130,
          )
        ],
      ),
    );
  }
}
