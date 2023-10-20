import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/loginpage.dart';
import 'package:untitled/signuppage.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Bottomnavgtn(),
    );
  }));
}

class Bottomnavgtn extends StatefulWidget {
  @override
  State<Bottomnavgtn> createState() => _BottomnavgtnState();
}

class _BottomnavgtnState extends State<Bottomnavgtn> {
  var Screen = [
    Text("home"),
    Text("search"),
    Text("people"),
    Text("favorite"),
    Loginpage(), // we want dont want appbar of turn off that on Loginpage
    Text("SignUp")
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BOTTOMNAVIGATION"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.yellowAccent,
        unselectedItemColor: Colors.green,
        mouseCursor: MouseCursor.uncontrolled,
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        onTap: (tapindex) {
          setState(() {
            index = tapindex;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline_rounded),
            label: "people",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login_sharp),
            label: "login",
          ),

          BottomNavigationBarItem(
            icon: IconButton(

              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signuppage()));
              },
              icon: Icon(Icons.logout_outlined),
            ),
            label: "SignUp",
          ),
        ],
      ),
      body: Center(
        child: Screen[index],
      ),
    );
  }
}
