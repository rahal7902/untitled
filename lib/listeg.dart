import 'dart:js_util';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/listview.dart';

void main(){
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        debugShowCheckedModeBanner:false,
        useInheritedMediaQuery:true,
        home: Listassignment(),);
    }
  ));
}

class Listassignment extends StatefulWidget{
  @override
  State<Listassignment> createState() => _ListassignmentState();
}

class _ListassignmentState extends State<Listassignment> {
  var step=["Step1","Step2","Step3","Step4","Step5","Step6","Step7","Step8","Step9","Step10"];
  var note=[
    "Step 01 - Due in 1 Day",
    "Step 02 - Due in 2 Day",
    "Step 03 - Due in 3 Day",
    "Step 04 - Due in 4 Day",
    "Step 05 - Due in 5 Day",
    "Step 06 - Due in 6 Day",
    "Step 07 - Due in 7 Day",
    "Step 08 - Due in 8 Day",
    "Step 09 - Due in 9 Day",
    "Step 10 - Due in 10 Day"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text("To Do",
              style: TextStyle(
                  color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold,fontStyle:FontStyle.italic ),),
        ),
backgroundColor: Colors.black87,
      ),
      body: ListView.separated(itemBuilder: (context,index){
        return Card(color: Colors.blue[100],
          child: ListTile(
            title: Text(step[index]),
            subtitle: Text(note[index]),
            trailing: Icon(Icons.check_box_outlined),


          ),
        );
      }, separatorBuilder: (BuildContext  context,int index){
        return Card(
          child: ListTile(
            leading: Icon(Icons.file_copy_outlined),
          trailing: Icon(Icons.gif_box_outlined),
          title: Text("Your have to complete"),
          subtitle: Text("description"),),
        );

      },
          itemCount: step.length),


    );
  }
}