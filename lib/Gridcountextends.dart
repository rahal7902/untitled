import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Gridcountextends(),
  ));
}

class Gridcountextends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("gridcountextend"),
        centerTitle: true,
      ),
      body: GridView.extent(maxCrossAxisExtent: 200),
    );
  }
}
