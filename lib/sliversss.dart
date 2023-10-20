import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Sliversss(),
    );
  }));
}

class Sliversss extends StatelessWidget {
  var colorsss = [900, 800, 700, 600, 500, 400, 300, 200, 100, 50];
  var imagesss = [
   "assets/iconss/bernard-hermant-nD9yL9ukVlk-unsplash.jpg",
    "assets/iconss/bernard-hermant-nD9yL9ukVlk-unsplash.jpg",
    "assets/iconss/bernard-hermant-nD9yL9ukVlk-unsplash.jpg",
    "assets/iconss/bernard-hermant-nD9yL9ukVlk-unsplash.jpg",
    "assets/iconss/bernard-hermant-nD9yL9ukVlk-unsplash.jpg",
    "assets/iconss/bernard-hermant-nD9yL9ukVlk-unsplash.jpg",
    "assets/iconss/bernard-hermant-nD9yL9ukVlk-unsplash.jpg",
    "assets/iconss/bernard-hermant-nD9yL9ukVlk-unsplash.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text("SLIVER APPBAR"),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.add_a_photo_outlined))
            ],
            bottom: AppBar(
              title: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search", prefixIcon: Icon(Icons.search)),
                ),
              ),
            ),
            flexibleSpace: Container(
              color: Colors.greenAccent,
              child: Text("hello"),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((colors, index) {
            return Container(
              height: 80,
              child: Text("hg"),
              color: Colors.red[colorsss[index]],
            );
          }, childCount: 10)),
          SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Container(
                  child: Image.asset(
                    imagesss[index],
                  ),
                );
              }, childCount: 8),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 5,crossAxisSpacing: 5))
        ],
      ),
    );
  }
}
