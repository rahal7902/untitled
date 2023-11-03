import 'package:flutter/material.dart';
import 'package:progressive_image/progressive_image.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  ProgressiveImageExample(),

    );
  }
}

class ProgressiveImageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Progressive Image Example')),
    body:Container(
      child: ProgressiveImage(
        placeholder: AssetImage('assets/placeholder.jpg'),
        // size: 1.87KB
        thumbnail: NetworkImage('https://i.imgur.com/7XL923M.jpg'),
        // size: 1.29MB
        image: NetworkImage('https://i.imgur.com/xVS07vQ.jpg'),
        height: 300,
        width: 500,
      ),
    ),
    );
  }
}