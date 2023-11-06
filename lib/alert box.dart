import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Alertboxx(),);
    }
  ));

}

class Alertboxx extends StatefulWidget {
  @override
  State<Alertboxx> createState() => _AlertboxxState();
}

class _AlertboxxState extends State<Alertboxx> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("alert box"),),
     body: Center(
       child: ElevatedButton(onPressed: (){
         showDialog(context: context,
             builder: (context){
           return AlertDialog(
             title: Text("exit"),
content: Text("need to exit"),
             actions: [
               TextButton(onPressed: ()
           {
             Navigator.of(context).pop();
           },
           child:Text("yes") ),
               TextButton(onPressed: (){
                 Navigator.of(context).pop();
               }, child: Text("no")),
               TextButton(onPressed: (){
                 Navigator.of(context).pop();
               }, child: Text("cancel"))
             ],
           );
             });
       }
           , child: Text("show alert")),
     )

   );

  }
}