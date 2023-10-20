import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Chatassgnmnt(),
    );
  }));
}

class Chatassgnmnt extends StatefulWidget {
  @override
  State<Chatassgnmnt> createState() => _ChatassgnmntState();
}

class _ChatassgnmntState extends State<Chatassgnmnt> {
  var chat=[
    Text("Chat"),
    Text("Channels"),
    Text("Profile")
  ];
  int intex=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text("Chats"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        currentIndex: intex,
        onTap: (tapintex){
          setState(() {
            intex=tapintex;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
          label: "Chat"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.wifi_channel),
              label: "Channel"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity_outlined),
              label: "Profile"
          ),
        ],
      ),
      body: Center(
        child: chat[intex],
      ),
    );
  }
}
