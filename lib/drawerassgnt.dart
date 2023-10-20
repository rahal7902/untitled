import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Drawerassgt(),
  ));
}

class Drawerassgt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MAILBOX"),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white70,
          child: ListView(
            children: [
              ListTile(
                title: Text("vshgs"),
                
              )
            ],
          ),
        ),
      ),
    );
  }
}
