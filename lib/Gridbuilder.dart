import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        home: Gridbuilder(),);
    }
  ));
}

class Gridbuilder extends StatefulWidget {
  @override
  State<Gridbuilder> createState() => _GridbuilderState();
}

class _GridbuilderState extends State<Gridbuilder> {
  var image=["assets/iconss/rahal.jpg","assets/iconss/rahal.jpg","assets/iconss/rahal.jpg","assets/iconss/rahal.jpg",
    "assets/iconss/rahal.jpg","assets/iconss/rahal.jpg","assets/iconss/rahal.jpg","assets/iconss/rahal.jpg"
    ,"assets/iconss/rahal.jpg","assets/iconss/rahal.jpg","assets/iconss/rahal.jpg","assets/iconss/rahal.jpg",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("GridVIEW"),
    ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context,index){
        return Card(
          child: Image(image: AssetImage(image[index]),),
        );
      },
itemCount: image.length,
      ),
    );
  }
}