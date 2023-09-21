import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        debugShowCheckedModeBanner:false,
        useInheritedMediaQuery:true,
        home: List_seperate(),);
    }
  ));
}

class List_seperate extends StatelessWidget{
  var name=["rah","tee","yee"];
  var phone=["89078","689","85489999"];
  var color=[50,100,200];
  // or we can assign diferent colors as  =>  var color=[Colors.red,Colors.yellow,Colors.blue];
  var image=["assets/iconss/man-person-icon.png","assets/iconss/man-person-icon.png","assets/iconss/man-person-icon.png"];
  var clas=["A1","A2","A3"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
     title: Text("list seperate"),
   ),
      body: ListView.separated(itemBuilder: (context,index){
        return Card( child: ListTile(
          title: Text(name[index]),
          subtitle: Text(phone[index]),
          trailing: Icon(Icons.call),
          leading: CircleAvatar(
            backgroundImage: AssetImage(image[index]),
          ),
        ),);
      },
          separatorBuilder: (context,index){
        return Text(clas[index]);
          }, itemCount: name.length,),
    );

  }
}