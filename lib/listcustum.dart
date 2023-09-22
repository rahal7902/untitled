
//SliverChildListDelegate

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        home: Listcustum(),);
    }
  ));
}

class Listcustum  extends StatefulWidget {
  @override
  State<Listcustum> createState() => _ListcustumState();
}

class _ListcustumState extends State<Listcustum> {
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   appBar: AppBar(title: Center(child: Text("Custumvie")),
   ),

   body: ListView.custom(childrenDelegate: SliverChildListDelegate(
     [
       Card(color: Colors.yellow,shadowColor: Colors.black,
       child: ListTile(
         leading: CircleAvatar(backgroundImage: AssetImage("assets/iconss/meals.png"),),
         title: Text("Raha"),
         subtitle: Text("pallipadi"),
         trailing: Icon(Icons.add_alert_sharp),
       ),),
       Card(color: Colors.yellow,shadowColor: Colors.black,
         child: ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("assets/iconss/meals.png"),),
           title: Text("saha"),
           subtitle: Text("padfsfdi"),
           trailing: Icon(Icons.add_alert_sharp),
         ),),
       Card(color: Colors.yellow,shadowColor: Colors.black,
         child: ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("assets/iconss/meals.png"),),
           title: Text("faah"),
           subtitle: Text("tttttttpadi"),
           trailing: Icon(Icons.add_alert_sharp),
         ),),
       Card(color: Colors.yellow,shadowColor: Colors.black,
         child: ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("assets/iconss/meals.png"),),
           title: Text("Raha"),
           subtitle: Text("pallipadi"),
           trailing: Icon(Icons.add_alert_sharp),
         ),),
       Card(color: Colors.yellow,shadowColor: Colors.black,
         child: ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("assets/iconss/meals.png"),),
           title: Text("saha"),
           subtitle: Text("padfsfdi"),
           trailing: Icon(Icons.add_alert_sharp),
         ),),
       Card(color: Colors.yellow,shadowColor: Colors.black,
         child: ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("assets/iconss/meals.png"),),
           title: Text("faah"),
           subtitle: Text("tttttttpadi"),
           trailing: Icon(Icons.add_alert_sharp),
         ),),
       Card(color: Colors.yellow,shadowColor: Colors.black,
         child: ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("assets/iconss/meals.png"),),
           title: Text("Raha"),
           subtitle: Text("pallipadi"),
           trailing: Icon(Icons.add_alert_sharp),
         ),),
       Card(color: Colors.yellow,shadowColor: Colors.black,
         child: ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("assets/iconss/meals.png"),),
           title: Text("saha"),
           subtitle: Text("padfsfdi"),
           trailing: Icon(Icons.add_alert_sharp),
         ),),
       Card(color: Colors.yellow,shadowColor: Colors.black,
         child: ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("assets/iconss/meals.png"),),
           title: Text("faah"),
           subtitle: Text("tttttttpadi"),
           trailing: Icon(Icons.add_alert_sharp),
         ),),
       Card(color: Colors.yellow,shadowColor: Colors.black,
         child: ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("assets/iconss/meals.png"),),
           title: Text("Raha"),
           subtitle: Text("pallipadi"),
           trailing: Icon(Icons.add_alert_sharp),
         ),),
       Card(color: Colors.yellow,shadowColor: Colors.black,
         child: ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("assets/iconss/meals.png"),),
           title: Text("saha"),
           subtitle: Text("padfsfdi"),
           trailing: Icon(Icons.add_alert_sharp),
         ),),
       Card(color: Colors.yellow,shadowColor: Colors.black,
         child: ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("assets/iconss/meals.png"),),
           title: Text("faah"),
           subtitle: Text("tttttttpadi"),
           trailing: Icon(Icons.add_alert_sharp),
         ),),
       Card(color: Colors.yellow,shadowColor: Colors.black,
         child: ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("assets/iconss/meals.png"),),
           title: Text("Raha"),
           subtitle: Text("pallipadi"),
           trailing: Icon(Icons.add_alert_sharp),
         ),),
       Card(color: Colors.yellow,shadowColor: Colors.black,
         child: ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("assets/iconss/meals.png"),),
           title: Text("saha"),
           subtitle: Text("padfsfdi"),
           trailing: Icon(Icons.add_alert_sharp),
         ),),
       Card(color: Colors.yellow,shadowColor: Colors.black,
         child: ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("assets/iconss/meals.png"),),
           title: Text("faah"),
           subtitle: Text("tttttttpadi"),
           trailing: Icon(Icons.add_alert_sharp),
         ),),
       Card(color: Colors.yellow,shadowColor: Colors.black,
         child: ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("assets/iconss/meals.png"),),
           title: Text("Raha"),
           subtitle: Text("pallipadi"),
           trailing: Icon(Icons.add_alert_sharp),
         ),),
       Card(color: Colors.yellow,shadowColor: Colors.black,
         child: ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("assets/iconss/meals.png"),),
           title: Text("saha"),
           subtitle: Text("padfsfdi"),
           trailing: Icon(Icons.add_alert_sharp),
         ),),
       Card(color: Colors.yellow,shadowColor: Colors.black,
         child: ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("assets/iconss/meals.png"),),
           title: Text("faah"),
           subtitle: Text("tttttttpadi"),
           trailing: Icon(Icons.add_alert_sharp),
         ),),
     ]
   )),
 );
  }
}