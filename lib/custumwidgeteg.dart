import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/customwidget.dart';

void main() {
  runApp(MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: custumwdgteg(),
  ));
}

class custumwdgteg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("gggg"),
        ),
        body: Custumwiget(
          onpresss: () {},
          photosss: Image.asset("assets/iconss/rahal.jpg"),
          namesss: Text("ghff"),
          bgcolorsss: Colors.orangeAccent,
        ));
  }
}
