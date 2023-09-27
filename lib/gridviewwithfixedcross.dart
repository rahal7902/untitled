import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        home: Gdfixedcross(),);
    }
  ));
}

class Gdfixedcross extends StatefulWidget {
  @override
  State<Gdfixedcross> createState() => _GdfixedcrossState();
}

class _GdfixedcrossState extends State<Gdfixedcross> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("imagesgid"),),
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
          mainAxisSpacing: 10,crossAxisSpacing: 10),
      children: [
        Card(color: Colors.cyan,
       child: Column(
         children: [
           SizedBox(height: 30,),
           CircleAvatar(backgroundImage: AssetImage("assets/iconss/rahal.jpg"),),
           Text("rahal")
         ],
       ),
        ),
        Card(color: Colors.cyan, child: Column(
          children: [
            SizedBox(height: 30,),
            CircleAvatar(backgroundImage: AssetImage("assets/iconss/rahal.jpg"),),
            Text("rahal")
          ],
        ),),
        Card(color: Colors.cyan, child: Column(
          children: [
            SizedBox(height: 30,),
            CircleAvatar(backgroundImage: AssetImage("assets/iconss/rahal.jpg"),),
            Text("rahal")
          ],
        ),),
        Card(color: Colors.cyan, child: Column(
          children: [
            SizedBox(height: 30,),
            CircleAvatar(backgroundImage: AssetImage("assets/iconss/rahal.jpg"),),
            Text("rahal")
          ],
        ),),
        Card(color: Colors.cyan, child: Column(
          children: [
            SizedBox(height: 30,),
            CircleAvatar(backgroundImage: AssetImage("assets/iconss/rahal.jpg"),),
            Text("rahal")
          ],
        ),),
        Card(color: Colors.cyan, child: Column(
          children: [
            SizedBox(height: 30,),
            CircleAvatar(backgroundImage: AssetImage("assets/iconss/rahal.jpg"),),
            Text("rahal")
          ],
        ),),
        Card(color: Colors.cyan, child: Column(
          children: [
            SizedBox(height: 30,),
            CircleAvatar(backgroundImage: AssetImage("assets/iconss/rahal.jpg"),),
            Text("rahal")
          ],
        ),),
        Card(color: Colors.cyan, child: Column(
          children: [
            SizedBox(height: 30,),
            CircleAvatar(backgroundImage: AssetImage("assets/iconss/rahal.jpg"),),
            Text("rahal")
          ],
        ),),
        Image(image: AssetImage("assets/iconss/motherboard.png")),
        Image(image: AssetImage("assets/iconss/motherboard.png")),
        Image(image: AssetImage("assets/iconss/motherboard.png")),
        Image(image: AssetImage("assets/iconss/motherboard.png")),
        Image(image: AssetImage("assets/iconss/motherboard.png")),
        Image(image: AssetImage("assets/iconss/motherboard.png")),
        Image(image: AssetImage("assets/iconss/motherboard.png")),
        Image(image: AssetImage("assets/iconss/motherboard.png")),
        Image(image: AssetImage("assets/iconss/motherboard.png")),
        Image(image: AssetImage("assets/iconss/motherboard.png")),
        Image(image: AssetImage("assets/iconss/motherboard.png")),
        Image(image: AssetImage("assets/iconss/motherboard.png")),
        Image(image: AssetImage("assets/iconss/motherboard.png")),
        Image(image: AssetImage("assets/iconss/motherboard.png")),
        Image(image: AssetImage("assets/iconss/motherboard.png")),
        Image(image: AssetImage("assets/iconss/motherboard.png"))
      ],
      ),
    );
  }
  }