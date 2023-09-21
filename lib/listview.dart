import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Listview(),
  ));
}

class Listview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview"),
      ),
      body: ListView(
        children: [
          Card(
            color: Colors.red,
            child: ListTile(
              title: Text("Rahal"),
              subtitle: Text("1234456"),
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/iconss/man-person-icon.png"),
              ),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(color: Colors.yellow,
            child: ListTile(
              title: Text("Rahal"),
              subtitle: Text("1234456"),
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/iconss/man-person-icon.png"),
              ),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(color: Colors.pink,
            child: ListTile(
              title: Text("Rahal"),
              subtitle: Text("1234456"),
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/iconss/man-person-icon.png"),
              ),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(color: Colors.green,
            child: ListTile(
              title: Text("Rahal"),
              subtitle: Text("1234456"),
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/iconss/man-person-icon.png"),
              ),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(color: Colors.green,
            child: ListTile(
              title: Text("Rahal"),
              subtitle: Text("1234456"),
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/iconss/man-person-icon.png"),
              ),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(color: Colors.grey,
            child: ListTile(
              title: Text("Rahal"),
              subtitle: Text("1234456"),
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/iconss/man-person-icon.png"),
              ),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(color: Colors.greenAccent,
            child: ListTile(
              title: Text("Rahal"),
              subtitle: Text("1234456"),
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/iconss/man-person-icon.png"),
              ),
              trailing: Icon(Icons.call),
            ),
          ),
        ],
      ),
    );
  }
}
