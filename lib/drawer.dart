import 'dart:html';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Drawer1(),
    );
  }));
}

class Drawer1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(

        child: SafeArea(
          child: Container(
            // decoration: BoxDecoration(gradient: LinearGradient(colors: [
            //   Colors.brown,Colors.lightGreen,Colors.redAccent
            // ])
            // Or we can do as next
            color: Colors.cyan,
            // datas as
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text("Rahal"),
                  accountEmail: Text("rmp@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/iconss/rahal.jpg"),
                  ),
                  otherAccountsPictures: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                          "assets/iconss/bernard-hermant-nD9yL9ukVlk-unsplash.jpg"),
                    ),

                  CircleAvatar(
                    backgroundImage: AssetImage(
                        "assets/iconss/deer.png"),
                  )
                  ],
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/iconss/images.jpeg"),fit: BoxFit.fill)),
                ),
                ListTile(
                  leading: Icon(Icons.bookmarks_outlined),
                  title: Text("All inboxes"),
                ),
                ListTile(
                  leading: Icon(Icons.padding),
                  title: Text("Primary"),
                ),
                ListTile(
                  leading: Icon(Icons.people_outline_rounded),
                  title: Text("Social"),
                ),
                ListTile(
                  leading: Icon(Icons.star_border),
                  title: Text("Starred"),
                ),
                ListTile(
                  leading: Icon(Icons.send),
                  title: Text("Sent"),
                ),
                ListTile(
                  leading: Icon(Icons.outbox),
                  title: Text("Outbox"),
                ),
                  ListTile(
                    leading: Icon(Icons.stop_circle_outlined),
                    title: Text("Spam"),
                  ),
                  ListTile(
                    leading: Icon(Icons.business_center_outlined),
                    title: Text("Bin"),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Settings"),
                  ),
                  ListTile(
                    leading: Icon(Icons.question_mark_outlined),
                    title: Text("Help and feedback"),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
