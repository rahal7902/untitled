import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Assigmt4(),
    );
  }));
}

class Assigmt4 extends StatelessWidget {
  var iconsss = [(Icons.hotel), (Icons.restaurant), (Icons.coffee_rounded)];
  var colorsss = [Colors.pink, Colors.blue, Colors.orangeAccent];
  var nameee = ["Hotels", "Restuarant", "Cafe"];
  var imagess = [
    "assets/iconss/images (1).jpeg",
    "assets/iconss/images (1).jpeg",
    "assets/iconss/images (1).jpeg",
    "assets/iconss/images (1).jpeg",
    "assets/iconss/images (1).jpeg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            leading: Icon(Icons.menu),
            title: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(child: Text("Location")),
            ),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border))
            ],
            bottom: AppBar(
              title: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                    decoration: InputDecoration(
                        hintText: "Current location",
                        prefixIcon: Icon(Icons.search)
                    )
                ),
              ),
            ),
          ),
          SliverGrid(delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
                child: Card(
                  color: colorsss[index],
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Center(child: Icon(iconsss[index])),
                        ),
                        Center(child: Text(nameee[index]))
                      ],
                    ),
                  ),
                )

            );
          }, childCount: nameee.length
          ), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 20, crossAxisSpacing: 20
          )),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              child: Image.asset(imagess[index]),
            );
          }, childCount:5))
        ],
      ),
    );
  }
}
