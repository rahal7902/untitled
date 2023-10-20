import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Tabbarassgnt(),);
    }
  ));
}

class Tabbarassgnt extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(length: 10,
   child: Scaffold(
     appBar: AppBar(title: Text("ASSIGMENT"),
     actions: [
       Icon(Icons.search)
     ],
     bottom: TabBar(
       isScrollable: true,
       tabs: [

       Column(
         children: [
           Tab(child: Text("Home"),icon: Icon(Icons.home_filled),),
         ],
       ),
       Column(
         children: [
           Tab(child: Text("Account"),icon: Icon(Icons.account_box_outlined),),
         ],
       ),
       Column(
         children: [
           Tab(child: Text("Alarm"),icon: Icon(Icons.alarm_add),),
         ],
       ),
       Column(
         children: [
           Tab(child: Text("home"),icon: Icon(Icons.home_filled),),
         ],
       ),
       Column(
         children: [
           Tab(child: Text("home"),icon: Icon(Icons.home_filled),),
         ],
       ),
       Column(
         children: [
           Tab(child: Text("home"),icon: Icon(Icons.home_filled),),
         ],
       ),
         Column(
           children: [
             Tab(child: Text("home"),icon: Icon(Icons.home_filled),),
           ],
         ),
         Column(
           children: [
             Tab(child: Text("home"),icon: Icon(Icons.home_filled),),
           ],
         ),
         Column(
           children: [
             Tab(child: Text("home"),icon: Icon(Icons.home_filled),),
           ],
         ),
         Column(
           children: [
             Tab(child: Text("home"),icon: Icon(Icons.home_filled),),
           ],
         )
     ],),
     ),
     body: Center(child: Icon(Icons.ac_unit,size: 400,),),
   ),);
  }
}