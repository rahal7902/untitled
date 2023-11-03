import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: Expandablewidget(),
  ));
}

class Expandablewidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("expandanle"),
      ),
      body: Column(
        children: [
          Container(color: Colors.yellowAccent,width: 180,height: 100,),
          Expanded(child: Container(color: Colors.green,width: 320,)),
          Expanded(child: Container(color: Colors.purple,)),
          Expanded(child: Container(color: Colors.red))
        ],
      )
    );
  }
}
