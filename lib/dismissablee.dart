import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: dismiablee(),));
}

class dismiablee extends StatelessWidget{
  var datasss=["aaaa","bbbb","cccc"];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text("dismi"),),
    body: ListView.builder(itemBuilder: (context,index){
      return Dismissible(
        //  color:color[index],
        child: ListTile(
          title: Text(name[index]),
          subtitle: Text(phone[index]),
          trailing: Icon(Icons.call),
          leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),
        ),
      );
    },
      itemCount: name.length,
    ),
  );

  }
}