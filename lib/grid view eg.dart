import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        debugShowCheckedModeBanner:false,
        useInheritedMediaQuery: true,
        home: Gridview(),);
    }
  ));
}

class Gridview extends StatefulWidget {
  @override
  State<Gridview> createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GRIDVIEW"),),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent:200,
        crossAxisSpacing: 10,
        mainAxisSpacing: 20),
        children: [
          Image(image: AssetImage("assets/iconss/bernard-hermant-nD9yL9ukVlk-unsplash.jpg")),
          Image(image: AssetImage("assets/iconss/bernard-hermant-nD9yL9ukVlk-unsplash.jpg")),
          Image(image: AssetImage("assets/iconss/bernard-hermant-nD9yL9ukVlk-unsplash.jpg")),
          Image(image: AssetImage("assets/iconss/bernard-hermant-nD9yL9ukVlk-unsplash.jpg")),
          Image(image: AssetImage("assets/iconss/bernard-hermant-nD9yL9ukVlk-unsplash.jpg")),
          Image(image: AssetImage("assets/iconss/bernard-hermant-nD9yL9ukVlk-unsplash.jpg")),
        ],
      ),
    );

  }
}