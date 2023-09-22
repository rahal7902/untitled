

//SliverChild builder Delegate

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        home: Listcusbuilddele(),);
    }
  ));
}

class Listcusbuilddele extends StatefulWidget{
  @override
  State<Listcusbuilddele> createState() => _ListcusbuilddeleState();
}

class _ListcusbuilddeleState extends State<Listcusbuilddele> {
  var name=["aaaaa","bbbb","cccccc","ddddd","bbbb","cccccc","ddddd"];
  var det=["2336","55466","8887","976756","55466","8887","976756"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
      Center(
          child: Text("SliverCustumbuilder")),),
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context, index){
        return Card(color: Colors.purple[200],
          child: ListTile(
            title: Text(name[index]),
            subtitle: Text(det[index]),
            leading: CircleAvatar(backgroundImage: AssetImage("assets/iconss/deer.png")),
            trailing: Icon(Icons.add),
          ),
        );

      },
      childCount: name.length,
      ),

      ),
    );
  }
}