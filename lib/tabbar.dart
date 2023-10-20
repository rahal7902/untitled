import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/listcustum.dart';
import 'package:untitled/listeg.dart';

import 'List builder.dart';
import 'listview.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Tabbarr(),
    );
  }));
}

class Tabbarr extends StatefulWidget {
  @override
  State<Tabbarr> createState() => _TabbarrState();
}

class _TabbarrState extends State<Tabbarr> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TEXT CHATS"),
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Icon(Icons.camera_alt_outlined),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Icon(Icons.search),
            ),
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("New group")),
                PopupMenuItem(child: Text("New broadcast")),
                PopupMenuItem(child: Text("Linked device")),
                PopupMenuItem(child: Text("Payment")),
                PopupMenuItem(child: Text("Settings"))
              ];
            })
          ],
          bottom: TabBar(
            tabs: [
             Tab(
                child: Icon(Icons.people_alt_outlined),
              ),
              Tab(
                child: Text("Chat"),
              ),
              Tab(
                child: Text("Status"),
              ),
              Tab(
                child: Text("Calls"),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Listbuild(),
            Listcustum(),
            Listassignment(),
            Listview()
          ],
        ),
      ),
    );
  }
}
